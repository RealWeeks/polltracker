class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.belongs_to :bill, index: true
      t.belongs_to :pol, index: true
      t.string :how_vote

      t.timestamps null: false
    end
    add_foreign_key :votes, :bills
    add_foreign_key :votes, :pols
  end
end
