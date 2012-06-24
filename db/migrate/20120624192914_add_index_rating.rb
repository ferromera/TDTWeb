class AddIndexRating < ActiveRecord::Migration
  def change
    add_index :players, :overallRating
  end

end
