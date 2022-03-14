class CreateJobs < ActiveRecord::Migration[6.1]
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :location
      t.integer :salary
      t.string :employment_type
      t.string :education
      t.text :description
      t.timestamps

      t.integer :company_id

     

    end
  end
end
