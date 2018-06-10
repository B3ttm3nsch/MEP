class CreateBsagProducts < ActiveRecord::Migration
  def change
    create_table :bsag_products do |t|

      t.timestamps null: false
    end
  end
end
