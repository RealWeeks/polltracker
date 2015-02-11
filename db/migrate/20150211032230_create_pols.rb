class CreatePols < ActiveRecord::Migration
  def change
    create_table :pols do |t|
      t.string :party
      t.string :name
      t.belongs_to :district, index: true

      t.timestamps null: false
    end
    add_foreign_key :pols, :districts
  end
end
