class CreateFacultyCampuses < ActiveRecord::Migration[8.0]
  def change
    create_table :faculty_campuses do |t|
      t.references :faculty, null: false, foreign_key: true
      t.references :campus, null: false, foreign_key: true

      t.timestamps
    end
  end
end
