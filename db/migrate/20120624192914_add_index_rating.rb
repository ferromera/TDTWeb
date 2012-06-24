class AddIndexRating < ActiveRecord::Migration
  def change
    drop_index :players, :age
    add_index :players, :overallRating
  end

end
