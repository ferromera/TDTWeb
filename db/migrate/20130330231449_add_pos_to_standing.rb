class AddPosToStanding < ActiveRecord::Migration
  def change
    add_column :standings , :position, :integer
  end
end
