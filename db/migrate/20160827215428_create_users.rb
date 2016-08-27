class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :photo
      t.string :state
      t.string :city
      t.string :occupation
      t.string :username
      t.string :rating

      t.timestamps
    end
  end
end
