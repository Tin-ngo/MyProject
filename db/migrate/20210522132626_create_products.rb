class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :soluong
      t.float :dongia
      t.string :mota

      t.timestamps
    end
  end
end
