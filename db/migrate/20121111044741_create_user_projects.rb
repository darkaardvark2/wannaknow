class CreateUserProjects < ActiveRecord::Migration
  def change
    create_table :user_projects do |t|
      t.integer :user_id
      t.integer :project_id
      t.boolean :expert

      t.timestamps
    end
  end
end
