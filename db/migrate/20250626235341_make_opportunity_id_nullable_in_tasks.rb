class MakeOpportunityIdNullableInTasks < ActiveRecord::Migration[7.1]
  def change
    change_column_null :tasks, :opportunity_id, true
  end
end