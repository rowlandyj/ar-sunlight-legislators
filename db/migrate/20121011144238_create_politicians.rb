require_relative '../config'

# this is where you should use an ActiveRecord migration to 

class CreatePoliticians < ActiveRecord::Migration
  def change
    create_table :politicians do |t|
      t.string :title
      t.string :firstname
      t.string :lastname
      t.string :party
      t.string :state
      t.string :in_office
      t.string :gender
      t.string :phone
      t.string :fax
      t.string :website
      t.string :webform
      t.string :congress_office
      t.string :twitter_id
      t.string :birthdate
    end
  end
end
