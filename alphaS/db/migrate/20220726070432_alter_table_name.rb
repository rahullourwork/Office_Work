class AlterTableName < ActiveRecord::Migration[7.0]
  def change
    rename_table :tables, :articles
  end
end
