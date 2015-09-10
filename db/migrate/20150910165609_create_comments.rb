class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
        t.string :content
        t.string :username
        t.references :deal, foreign_key:true
    end
  end
end
