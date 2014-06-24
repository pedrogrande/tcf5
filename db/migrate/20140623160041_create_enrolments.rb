class CreateEnrolments < ActiveRecord::Migration
  def change
    create_table :enrolments do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.string :email
      t.string :address
      t.string :suburb
      t.string :state
      t.string :postcode
      t.string :country
      t.boolean :paid
      t.integer :price
      t.string :guid
      t.string :stripe_id
      t.references :course, index: true
      t.references :intake, index: true
      t.references :payment, index: true
      t.references :special, index: true

      t.timestamps
    end
  end
end
