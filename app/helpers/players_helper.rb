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
end
