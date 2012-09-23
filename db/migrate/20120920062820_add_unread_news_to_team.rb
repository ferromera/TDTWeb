class AddUnreadNewsToTeam < ActiveRecord::Migration
  def change
    add_column :teams , :unreadNews, :boolean, default: false
  end
end
