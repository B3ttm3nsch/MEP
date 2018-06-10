class CreateTblclients < ActiveRecord::Migration
  def change
    create_table :tblclients do |t|

      t.timestamps null: false
    end
  end
end
