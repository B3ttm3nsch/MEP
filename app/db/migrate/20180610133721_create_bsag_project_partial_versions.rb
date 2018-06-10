class CreateBsagProjectPartialVersions < ActiveRecord::Migration
  def change
    create_table :bsag_project_partial_versions do |t|

      t.timestamps null: false
    end
  end
end
