module PlayersHelper
  
  def getPrice rating
    (((rating/10.0)**8)/1E6).round(2)
  end
  def ratingColor rating
    if rating < 70
      "PlayerWhiteRating"
    elsif rating <80
      "PlayerGreenRating"
    elsif rating <90
      "PlayerYellowRating"
    elsif rating <95  
      "PlayerOrangeRating"
    else
      "PlayerRedRating"
    end
  end
  def get100StatStyle stat
    if stat < 70
      "WhiteStatNumber"
    elsif stat <80
      "GreenStatNumber"
    elsif stat <90
      "YellowStatNumber"
    elsif stat <95  
      "OrangeStatNumber"
    else
      "RedStatNumber"
    end
  end
  def get8StatStyle stat
    if stat < 7
      "WhiteStatNumber"
    elsif stat < 8  
      "OrangeStatNumber"
    else
      "RedStatNumber"
    end
  end
  def get3StatStyle stat
    if stat < 2
      "WhiteStatNumber"
    elsif stat < 3  
      "OrangeStatNumber"
    else
      "RedStatNumber"
    end
  end
  def getABCStatStyle stat
    if stat == "C"
      "WhiteStatNumber"
    elsif stat == "B"
      "OrangeStatNumber"
    else
      "RedStatNumber"
    end
  end
  
  def getPositionImage pos
    case 
    when pos=="GK" then image_tag "/assets/PT_ON.png"
    when pos=="SWP" then image_tag "/assets/LIB_ON.png"
    when pos=="CB" then image_tag "/assets/DEF_ON.png"
    when pos=="RB" then image_tag "/assets/LD_ON.png"
    when pos=="LB" then image_tag "/assets/LI_ON.png"
    when pos=="DMF" then image_tag "/assets/MCD_ON.png"
    when pos=="CMF" then image_tag "/assets/MC_ON.png"
    when pos=="RMF" then image_tag "/assets/ID_ON.png"
    when pos=="LMF" then image_tag "/assets/II_ON.png"
    when pos=="AMF" then image_tag "/assets/MP_ON.png"
    when pos=="RWF" then image_tag "/assets/ER_ON.png"
    when pos=="LWF" then image_tag "/assets/EI_ON.png"
    when pos=="SS" then image_tag "/assets/SP_ON.png"
    when pos=="CF" then image_tag "/assets/DC_ON.png"
    end

  end
end
