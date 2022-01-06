class CreateCoverLetters < ActiveRecord::Migration[6.1]
  def change
    create_table :cover_letters do |t|
      t.string :name
      t.string :company  

      t.integer :user_id
    
    end
  end
end
