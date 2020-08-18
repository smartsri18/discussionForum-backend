class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name, null:false
      t.string :github_username, null:false
      t.string :github_url, null:false
      t.string :email, null:false

      t.timestamps
    end
    add_index :users, :email, unique: true
    add_index :users, :github_username, unique: true
  end
end
