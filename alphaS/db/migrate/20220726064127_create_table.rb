class CreateTable < ActiveRecord::Migration[7.0]
  def change
    create_table :tables do |t|
       t.string :title
       t.text :des
      t.timestamps
    end
  end
end
