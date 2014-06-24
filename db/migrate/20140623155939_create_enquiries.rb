class CreateEnquiries < ActiveRecord::Migration
  def change
    create_table :enquiries do |t|
      t.string :name
      t.string :last_name
      t.string :email
      t.string :phone
      t.text :content

      t.timestamps
    end
  end
end
