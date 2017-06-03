class RemoveBodyFromContact < ActiveRecord::Migration[5.0]
  def change
    remove_column :contacts, :body, :string
  end
end
