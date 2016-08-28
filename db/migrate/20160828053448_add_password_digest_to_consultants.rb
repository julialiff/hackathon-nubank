class AddPasswordDigestToConsultants < ActiveRecord::Migration[5.0]
  def change
    add_column :consultants, :password_digest, :string
  end
end
