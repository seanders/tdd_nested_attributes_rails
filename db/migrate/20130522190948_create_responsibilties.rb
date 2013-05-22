class CreateResponsibilties < ActiveRecord::Migration
  def change
    create_table :responsibilties do |t|
      t.references :involvement
      t.references :role
      t.references :region
      t.text :description

      t.timestamps
    end
    add_index :responsibilties, :involvement_id
    add_index :responsibilties, :role_id
    add_index :responsibilties, :region_id
  end
end
