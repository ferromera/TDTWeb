class CreateBids < ActiveRecord::Migration
  def change
    create_table :bids do |t|
      t.integer :bidder_id
      t.integer :offered_id
      t.integer :money
      t.integer :player_id
      t.string :description
      t.timestamps
    end
    add_index :bids, :bidder_id
    add_index :bids, :offered_id
    add_index :bids, :player_id
  end
end
