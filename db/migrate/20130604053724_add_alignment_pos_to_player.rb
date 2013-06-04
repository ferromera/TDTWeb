class AddAlignmentPosToPlayer < ActiveRecord::Migration
  def change
    add_column :players , :alignmentpos, :string, default: ""
  end
end
