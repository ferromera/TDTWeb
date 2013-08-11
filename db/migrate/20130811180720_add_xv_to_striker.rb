class AddXvToStriker < ActiveRecord::Migration
  def change
    add_column :strikers , :XV, :integer
  end
end
