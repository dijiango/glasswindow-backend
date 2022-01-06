class CreateJobs < ActiveRecord::Migration[6.1]
  def change
    create_table :jobs do |t|
      t.string :image_url
      t.string :title
      t.string :company
      t.string :location
      t.integer :salary
      t.timestamps

      t.integer :company_id

     

    end
  end
end
