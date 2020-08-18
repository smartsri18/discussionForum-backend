class CreateAssociatedProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :associated_projects do |t|
      t.references :issue, null: false, foreign_key: true
      t.references :project, null: false, foreign_key: true

      t.timestamps
    end
    add_index :associated_projects, [:issue_id, :project_id], unique: true
  end
end
