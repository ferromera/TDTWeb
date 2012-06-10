class AddHeightWeight < ActiveRecord::Migration
  def change
    add_column :players, :height,:integer
    add_column :players, :weight,:integer
  end
end
