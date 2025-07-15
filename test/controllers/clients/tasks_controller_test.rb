require "test_helper"

class Clients::TasksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @client = clients(:one) # Assuming you have a client fixture
    @opportunity = opportunities(:one) # Assuming you have an opportunity fixture
    @task = tasks(:one) # Assuming you have a task fixture
  end

  test "should get index" do
    get client_tasks_url(@client)
    assert_response :success
  end

  test "should get new" do
    get new_client_task_url(@client)
    assert_response :success
  end

  test "should create client task" do
    assert_difference('Task.count') do
      post client_tasks_url(@client), params: { task: { title: 'New Client Task', description: 'Some description', due_date: Date.tomorrow, status: 'Pending', priority: 'Low', client_id: @client.id } }
    end
    assert_redirected_to client_task_url(@client, Task.last)
  end

  test "should create opportunity task" do
    assert_difference('Task.count') do
      post client_opportunity_tasks_url(@client, @opportunity), params: { task: { title: 'New Opportunity Task', description: 'Some description', due_date: Date.tomorrow, status: 'Pending', priority: 'Low' } }
    end
    assert_redirected_to client_task_url(@client, Task.last)
  end

  test "should show task" do
    get client_task_url(@client, @task)
    assert_response :success
  end

  test "should get edit" do
    get edit_client_task_url(@client, @task)
    assert_response :success
  end

  test "should update task" do
    patch client_task_url(@client, @task), params: { task: { title: 'Updated Task', description: 'Updated description', due_date: Date.today + 2.days, status: 'Completed', priority: 'High' } }
    assert_redirected_to client_task_url(@client, @task)
  end

  test "should destroy task" do
    assert_difference('Task.count', -1) do
      delete client_task_url(@client, @task)
    end
    assert_redirected_to client_tasks_url(@client)
  end
end