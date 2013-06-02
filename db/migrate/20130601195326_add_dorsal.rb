class AddDorsal < ActiveRecord::Migration
  def change
    add_column :players , :dorsal, :integer
  end
end
