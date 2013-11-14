class CreateCsvs < ActiveRecord::Migration
  def change
    create_table :csvs do |t|
      t.text :csv_text
      t.timestamps
    end
  end
end
