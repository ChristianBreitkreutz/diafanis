class AddMemberDataToSprint < ActiveRecord::Migration[7.0]
  def change
    add_column(:sprints, :member_data, :text, default: {}.to_yaml, null: false )
  end
end
