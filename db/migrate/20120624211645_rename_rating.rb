class RenameRating < ActiveRecord::Migration
  def change
    add_index :players, :age
    rename_column :players , :overallRating, :overallrating
  end
end
