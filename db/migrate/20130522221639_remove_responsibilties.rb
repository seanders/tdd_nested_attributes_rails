class RemoveResponsibilties < ActiveRecord::Migration
  def change
    drop_table :responsibilties
  end
end
