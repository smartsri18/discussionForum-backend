class CreateIssues < ActiveRecord::Migration[6.0]
  def change
    create_table :issues do |t|
      t.references :user, null: false, foreign_key: true
      t.string :title, null: false
      t.text :context, null: false
      t.integer :status

      t.timestamps
    end
  end
end
