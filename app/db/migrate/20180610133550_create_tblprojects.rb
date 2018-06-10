class CreateTblprojects < ActiveRecord::Migration
  def change
    create_table :tblprojects do |t|

      t.timestamps null: false
    end
  end
end
