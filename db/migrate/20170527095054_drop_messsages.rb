class DropMesssages < ActiveRecord::Migration[5.0]
  def change
    add_column :contacts, :message, :string
    drop_table :messages
  end
end
