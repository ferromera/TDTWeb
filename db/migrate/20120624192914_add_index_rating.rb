class AddIndexRating < ActiveRecord::Migration
  def change
    remove_index :players, :age
    add_index :players, :overallRating
  end

end
