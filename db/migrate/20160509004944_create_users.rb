class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.date :birthdate
      t.boolean :active
      t.string :password_digest
      t.boolean :is_admin
      t.datetime :last_sign_in
      t.datetime :current_session_start
      t.integer :invited_by

      t.timestamps null: false
    end
    add_index :users, :email, unique: true
  end
end
