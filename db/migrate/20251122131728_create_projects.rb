class CreateProjects < ActiveRecord::Migration[7.1]
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.string :img_url
      t.string :tech_stack
      t.string :project_url
      t.string :github_url
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
