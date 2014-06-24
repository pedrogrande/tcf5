class CreateWorkshops < ActiveRecord::Migration
  def change
    create_table :workshops do |t|
      t.string :name
      t.string :tagline
      t.text :description
      t.integer :duration_minutes
      t.string :icon
      t.references :skill_group, index: true
      t.string :workshop_code
      t.boolean :active
      t.string :slug
      t.text :outcome
      t.text :objectives
      t.text :benefits
      t.references :skill_level, index: true

      t.timestamps
    end
  end
end
