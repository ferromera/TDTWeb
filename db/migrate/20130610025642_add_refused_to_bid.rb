class AddRefusedToBid < ActiveRecord::Migration
    def change
    add_column :bids , :refused, :boolean, default: false
  end
end
