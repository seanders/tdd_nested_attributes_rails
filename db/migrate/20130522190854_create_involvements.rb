class CreateInvolvements < ActiveRecord::Migration
  def change
    create_table :involvements do |t|
      t.references :project
      t.references :user
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
    add_index :involvements, :project_id
    add_index :involvements, :user_id
  end
end
