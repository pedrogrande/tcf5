class CreateSpecials < ActiveRecord::Migration
  def change
    create_table :specials do |t|
      t.integer :admin_id
      t.string :recipient_email
      t.references :course, index: true
      t.references :intake, index: true
      t.integer :dollar_discount
      t.integer :percent_discount
      t.string :guid
      t.date :date_redeemed

      t.timestamps
    end
  end
end
