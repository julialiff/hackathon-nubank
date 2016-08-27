class AddKnowledgeToConsultants < ActiveRecord::Migration[5.0]
  def change
    add_column :consultants, :knowledge, :string
  end
end
