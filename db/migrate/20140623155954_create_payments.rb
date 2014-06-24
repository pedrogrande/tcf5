class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.string :payment_method
      t.string :payment_price
      t.references :user, index: true

      t.timestamps
    end
  end
end
