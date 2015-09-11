class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
        t.string :content
        t.string :username

        t.timestamps null: false
        t.references :deal, foreign_key:true
    end
  end
end
