class AddUsersTable < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.datetime :birth_date
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password
      t.timestamps
    end
  end
end