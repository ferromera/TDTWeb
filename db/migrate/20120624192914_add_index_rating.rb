class AddIndexRating < ActiveRecord::Migration
  def change
    remove_index :players, :age
   
  end

end
