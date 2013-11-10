class ChangeInjuryToleranceToInteger < ActiveRecord::Migration
  def change
    remove_column :players, :injuryTolerance
    add_column :players, :injuryTolerance, :integer
  end
end
