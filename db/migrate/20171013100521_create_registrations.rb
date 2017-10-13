class CreateRegistrations < ActiveRecord::Migration[5.1]
  def change
    create_table :registrations do |t|
      t.references :user, foreign_key: true
      t.references :event, foreign_key: true
      t.integer :price
      t.integer :guest_count
      t.string :status

      t.timestamps
    end
  end
end
