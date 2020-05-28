class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string  :username,null: false
      t.string  :email,null: false
      t.string  :password,null: false
      t.text    :profile
      t.string  :profile_image
      t.timestamps
    end
  end
end


