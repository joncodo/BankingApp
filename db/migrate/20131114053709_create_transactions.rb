class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.datetime :transaction_date
      t.decimal :amount
      t.string :other_info
      t.string :detail
      t.string :purchase
      t.string :category
      t.timestamps
    end
  end
end
