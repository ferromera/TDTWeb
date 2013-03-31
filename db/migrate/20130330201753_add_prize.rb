class AddPrize < ActiveRecord::Migration
  def  change
    add_column :standings , :prize, :integer
  end
end
