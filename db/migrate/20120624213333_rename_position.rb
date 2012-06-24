class RenamePosition < ActiveRecord::Migration
  def change 
    rename_column :players, :registeredPosition, :position
  end
end
