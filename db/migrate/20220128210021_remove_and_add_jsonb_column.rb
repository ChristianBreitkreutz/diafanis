class RemoveAndAddJsonbColumn < ActiveRecord::Migration[7.0]
  def change
    remove_column(:sprints,:member_data,:text)
    add_column(:sprints, :member_data, :jsonb, default: {}.to_yaml, null: false )
  end
end
