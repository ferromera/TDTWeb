class AddNewSkillToPlayers < ActiveRecord::Migration
  def change
    add_column :players , :s15KnuckleShot, :boolean
    add_column :players , :s16JumpingVolley, :boolean
    add_column :players , :s17ScissorKick, :boolean
    add_column :players , :s18HeelFlick, :boolean
    add_column :players , :s19WeightedPass, :boolean
    add_column :players , :s20DoubleTouch, :boolean
    add_column :players , :s21RunAround, :boolean
    add_column :players , :s22Sombrero, :boolean
    add_column :players , :s23180Drag, :boolean
    add_column :players , :s24LungingTackle, :boolean
    add_column :players , :s25DivingHeader, :boolean
    add_column :players , :s26GKLongThrow, :boolean
    
  end
end
