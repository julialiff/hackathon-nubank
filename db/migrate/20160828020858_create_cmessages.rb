class CreateCmessages < ActiveRecord::Migration[5.0]
  def change
    create_table :cmessages do |t|
      t.string :message
      t.references :user, foreign_key: true
      t.references :consultant, foreign_key: true

      t.timestamps
    end
  end
end
