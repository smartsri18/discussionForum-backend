class CreateAssociatedLabels < ActiveRecord::Migration[6.0]
  def change
    create_table :associated_labels do |t|
      t.references :issue, null: false, foreign_key: true
      t.references :label, null: false, foreign_key: true

      t.timestamps
    end
    add_index :associated_labels, [:issue_id, :label_id], unique: true
  end
end
