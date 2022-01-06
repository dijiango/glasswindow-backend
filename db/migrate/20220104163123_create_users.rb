class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :image_url
      t.string :name
      t.string :address
      t.string :email
      t.string :phone_number

    end
  end
end
