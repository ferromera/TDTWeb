class AddEmblemUrlToTeam < ActiveRecord::Migration
  def change
    add_column :teams , :emblem, :string , default: "/assets/teams/default_emblem.png"
  end
end
