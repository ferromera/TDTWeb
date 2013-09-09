class AddXviToStriker < ActiveRecord::Migration
  def change
    add_column :strikers , :XVI, :integer
  end
end
