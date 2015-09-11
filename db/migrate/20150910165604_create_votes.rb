class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
        t.integer :vote
        t.references :deal, foreign_key:true

        t.timestamps null: false
    end
  end
end
