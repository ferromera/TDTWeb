class AddPositionToPlayer < ActiveRecord::Migration
  def change
    add_column :players , :x, :string, default: "0"
    add_column :players , :y, :string, default: "0"
  end
end
