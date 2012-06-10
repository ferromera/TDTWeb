class AddDefaultToTeamMoney < ActiveRecord::Migration
  def change
    change_table :teams do |t|
      t.remove :money
    end
    add_column :teams , :money, :integer , default: 300000000
  end
end
