class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :phone
      t.string :profile_picture
      t.references :user, index: true
      t.string :slug
      t.string :google_plus
      t.string :linkedin
      t.string :twitter
      t.string :github
      t.string :website
      t.string :title
      t.text :info

      t.timestamps
    end
  end
end
