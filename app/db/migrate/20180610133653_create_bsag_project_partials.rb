class CreateBsagProjectPartials < ActiveRecord::Migration
  def change
    create_table :bsag_project_partials do |t|

      t.timestamps null: false
    end
  end
end
