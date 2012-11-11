class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.string :body
      t.string :video
      t.boolean :funded

      t.timestamps
    end
  end
end
