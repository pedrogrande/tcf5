class CreateInfoEnquiries < ActiveRecord::Migration
  def change
    create_table :info_enquiries do |t|
      t.string :email
      t.references :referrer, index: true
      t.string :first_name

      t.timestamps
    end
  end
end
