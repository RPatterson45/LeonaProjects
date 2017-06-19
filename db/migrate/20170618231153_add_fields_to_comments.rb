class AddFieldsToComments < ActiveRecord::Migration[5.0]
  def change
    add_column :comments, :references, :string
    remove_column :comments, :name
  end
end
