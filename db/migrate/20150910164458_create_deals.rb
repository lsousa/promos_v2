class CreateDeals < ActiveRecord::Migration
  def change
    create_table :deals do |t|
        t.string :title
        t.string :slug, uniqueness: true
        t.string :description
        t.string :deal_url
        t.string :img
        t.decimal :price
        t.integer :sum_votes
        t.integer :count_comments

        t.timestamps null: false
    end
  end
end
