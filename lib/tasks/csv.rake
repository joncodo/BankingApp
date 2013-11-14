namespace :csv do
  task :import do
    require 'csv'
    require_relative '../../app/models/transaction'
    csv_text = File.read('monthly_csvs/pcbanking.csv')
    csv = CSV.parse(csv_text, :headers => false)
    csv.each do |row|
      puts row[3].to_s
      Transaction.create!(transaction_date: row[0], amount: row[1], other_info: row[2], type: row[3], purchase: row[4])
    end
  end
end
