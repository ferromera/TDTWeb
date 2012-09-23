class AddHasBeenReadToBids < ActiveRecord::Migration
  def change
    add_column :bids , :hasBeenRead, :boolean, default: false
  end
end
