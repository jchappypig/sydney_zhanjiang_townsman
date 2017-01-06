class CreateMembers < ActiveRecord::Migration[5.0]
  def change
    create_table :members do |t|
      t.string :name
      t.string :phone
      t.string :wechat
      t.string :suburb
      t.string :work
      t.string :email
      t.string :gender
      t.date :dob

      t.timestamps
    end
  end
end
