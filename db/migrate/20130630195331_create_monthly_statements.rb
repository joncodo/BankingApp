class CreateMonthlyStatements < ActiveRecord::Migration
  def change
    create_table :monthly_statements do |t|
      t.datetime :date
      t.float :amount
      t.string :info1
      t.string :info2
      t.string :info3
      t.timestamps
    end
  end
end
