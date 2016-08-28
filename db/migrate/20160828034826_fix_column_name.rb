class FixColumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :ads, :type, :content
  end
end
