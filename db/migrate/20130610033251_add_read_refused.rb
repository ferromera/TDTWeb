class AddReadRefused < ActiveRecord::Migration
  def change
    add_column :bids , :readrefused, :boolean, default: false
  end
end
