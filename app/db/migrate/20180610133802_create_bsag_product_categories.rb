class CreateBsagProductCategories < ActiveRecord::Migration
  def change
    create_table :bsag_product_categories do |t|

      t.timestamps null: false
    end
  end
end
