class EraseViiiFromStrikers < ActiveRecord::Migration
  def change
    remove_column :strikers , :VIII
  end
end
