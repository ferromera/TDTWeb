class AddAutorizationToUser < ActiveRecord::Migration
  def change
    add_column :users, :authorization, :boolean, default: false
  end
end
