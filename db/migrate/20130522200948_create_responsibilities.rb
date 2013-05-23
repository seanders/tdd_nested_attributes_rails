class CreateResponsibilities < ActiveRecord::Migration
  def change
    create_table :responsibilities do |t|
      t.references :involvement
      t.references :role
      t.references :region
      t.text :description

      t.timestamps
    end
    add_index :responsibilities, :involvement_id
    add_index :responsibilities, :role_id
    add_index :responsibilities, :region_id
  end
end
