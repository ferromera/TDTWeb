class AddStrikers14 < ActiveRecord::Migration
  def change
    add_column :strikers , :XIV, :integer
  end
end
