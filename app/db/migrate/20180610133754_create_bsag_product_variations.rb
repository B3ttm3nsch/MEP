class CreateBsagProductVariations < ActiveRecord::Migration
  def change
    create_table :bsag_product_variations do |t|

      t.timestamps null: false
    end
  end
end
