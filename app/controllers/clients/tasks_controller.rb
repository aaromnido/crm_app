class Clients::TasksController < ApplicationController
  before_action :set_client
  before_action :set_opportunity, only: [:new, :create, :show, :edit, :update, :destroy]
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  TASK_STATUSES = ["Pending", "In Progress", "Completed"]
  TASK_PRIORITIES = ["Low", "Medium", "High"]

  def index
    @tasks = @client.tasks
  end

  def show
  end

  def new
    @task = @opportunity ? @opportunity.tasks.build(client: @client) : @client.tasks.build
  end

  def create
    task_attributes = task_params
    @task = @client.tasks.build(task_params)

    if @task.save
      redirect_to client_task_path(@client, @task), notice: 'Task was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @task.update(task_params)
      redirect_to client_task_path(@client, @task), notice: 'Task was successfully updated.'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @task.destroy
    redirect_to client_tasks_url(@client), notice: 'Task was successfully destroyed.'
  end

  private

  def set_client
    @client = Client.find(params[:client_id])
  end

  def set_opportunity
    @opportunity = @client.opportunities.find(params[:opportunity_id]) if params[:opportunity_id]
  end

  def set_task
    @task = @client.tasks.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:title, :description, :due_date, :status, :priority, :opportunity_id)
  end
end