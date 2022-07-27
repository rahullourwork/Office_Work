class AddColumnAuthorToTables < ActiveRecord::Migration[7.0]
  def change
    add_column :tables, :author, :text
  end
end
