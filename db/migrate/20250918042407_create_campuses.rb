class CreateCampuses < ActiveRecord::Migration[8.0]
  def change
    create_table :campuses do |t|
      t.references :university, null: false, foreign_key: true
      t.string :name
      t.string :address

      t.timestamps
    end
  end
end
