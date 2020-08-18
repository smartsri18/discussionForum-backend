class CreateLabels < ActiveRecord::Migration[6.0]
  def change
    create_table :labels do |t|
      t.string :name, null: false
      t.string :description

      t.timestamps
    end
    add_index :labels, :name, unique: true
  end
end
