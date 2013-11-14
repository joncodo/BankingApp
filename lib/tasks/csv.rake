namespace :csv do
  task :import => :environment do
    Transaction.new.import
  end
end
