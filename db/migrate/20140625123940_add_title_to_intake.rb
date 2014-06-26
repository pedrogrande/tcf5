class AddTitleToIntake < ActiveRecord::Migration
  def change
    add_column :intakes, :title, :string, unique: true, index: true
  end
end
