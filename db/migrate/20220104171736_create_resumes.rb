class CreateResumes < ActiveRecord::Migration[6.1]
  def change
    create_table :resumes do |t|

      t.string :name
      t.string :address
      t.string :email
      t.string :phone_number

      t.integer :user_id
    end
  end
end
