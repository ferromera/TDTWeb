class AddDefaultEmblem < ActiveRecord::Migration
  def change
    change column  :teams , :emblem, :integer , default: 300000000
  end
end
