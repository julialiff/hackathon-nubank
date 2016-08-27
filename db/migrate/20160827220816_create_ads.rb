class CreateAds < ActiveRecord::Migration[5.0]
  def change
    create_table :ads do |t|
      t.string :type
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
