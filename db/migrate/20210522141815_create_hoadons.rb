class CreateHoadons < ActiveRecord::Migration[6.1]
  def change
    create_table :hoadons do |t|
      t.integer :iduser
      t.integer :idproduct
      t.float :dongia
      t.integer :soluong

      t.timestamps
    end
  end
end
