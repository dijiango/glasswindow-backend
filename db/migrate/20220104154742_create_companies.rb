class CreateCompanies < ActiveRecord::Migration[6.1]
  def change
      create_table :companies do |t|
        t.string :image_url
        t.string :name
        t.string :industry
        t.integer :rating

      end
    end
  end
      
