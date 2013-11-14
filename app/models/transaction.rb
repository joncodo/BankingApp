class Transaction < ActiveRecord::Base
  attr_accessible :transaction_date, :amount, :other_info, :detail, :purchase

  def import
    require 'csv'

    puts 'dont remove data detect dupes'
    return

    Transaction.find_each{|t| t.destroy}
    Dir.glob('monthly_csvs/*.csv') do |file_name|
      csv_text = File.read(file_name)
      csv = CSV.parse(csv_text, :headers => false)
      csv.each do |row|
        Transaction.create(transaction_date: DateTime.strptime(row[0], '%m/%d/%y'), amount: row[1], other_info: row[2], detail: row[3], purchase: row[4])
      end
    end
  end

  def self.set_category(name, type)
    Transaction.where("purchase ilike ?", '%' + name + ' %').find_each do |t|
      t.update_attribute(:category, type)
    end
  end
end

