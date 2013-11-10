#coding: utf-8
module PlayersHelper
  
  def getPrice rating
    (((rating/10.0)**8)/1E6).round(2)
  end
  def getSellingPrice rating
    (((rating/10.0)**8)/1.5E6).round(2)
  end
  def ratingColor rating
    if rating < 75
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
    if stat < 75
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
  def get100StatColor stat
    if stat < 75
      "white"
    elsif stat <80
      "green"
    elsif stat <90
      "yellow"
    elsif stat <95  
      "orange"
    else
      "red"
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
    when pos=="GK" then image_tag "/assets/PT_ON.png" , :size => "49x21" 
    when pos=="CB" then image_tag "/assets/DEF_ON.png" , :size => "49x21"
    when pos=="RB" then image_tag "/assets/LD_ON.png" , :size => "49x21"
    when pos=="LB" then image_tag "/assets/LI_ON.png" , :size => "49x21"
    when pos=="DMF" then image_tag "/assets/MCD_ON.png" , :size => "49x21"
    when pos=="CMF" then image_tag "/assets/MC_ON.png" , :size => "49x21"
    when pos=="RMF" then image_tag "/assets/ID_ON.png" , :size => "49x21"
    when pos=="LMF" then image_tag "/assets/II_ON.png" , :size => "49x21"
    when pos=="AMF" then image_tag "/assets/MP_ON.png" , :size => "49x21"
    when pos=="RWF" then image_tag "/assets/ED_ON.png" , :size => "49x21"
    when pos=="LWF" then image_tag "/assets/EI_ON.png" , :size => "49x21"
    when pos=="SS" then image_tag "/assets/SP_ON.png" , :size => "49x21"
    when pos=="CF" then image_tag "/assets/DC_ON.png" , :size => "49x21"
    end

  end
  def getPositionOrder pos
    case 
    when pos=="GK" then "1"
    when pos=="CB" then "3"
    when pos=="RB" then "4"
    when pos=="LB" then "5"
    when pos=="DMF" then "6"
    when pos=="CMF" then "7"
    when pos=="RMF" then "8"
    when pos=="LMF" then "9"
    when pos=="AMF" then "10"
    when pos=="RWF" then "11"
    when pos=="LWF" then "12"
    when pos=="SS" then "13"
    when pos=="CF" then "14"
    end
  end
  def name_filter pls , name
    return pls if name.nil?
    r=Array.new
    pls.each do |p|
      if match_str p.name,name
        r<<p
      end
     end
     r
  end
  def match_str str , at
      str= convert_to_common_chars str
      at=convert_to_common_chars at
      !str.match(at).nil?
  end
  COMMON_CHAR_OF={
    "\u00C0" => 'a', # À
    "\u00C1" => 'a', # Á
    "\u00C2" => 'a', # Â
    "\u00C3" => 'a', # Ã
    "\u00C4" => 'a', # Ä
    "\u00C5" => 'a', # Å
    "\u00C6" => 'a', # Æ
    "\u00C7" => 'c', # Ç
    "\u00C8" => 'e', # È
    "\u00C9" => 'e', # É
    "\u00CA" => 'e', # Ê
    "\u00CB" => 'e', # Ë
    "\u00CC" => 'i', # Ì
    "\u00CD" => 'i', # Í
    "\u00CE" => 'i', # Î
    "\u00CF" => 'i', # Ï
    "\u00D0" => 'd', # Ð
    "\u00D1" => 'ñ', # Ñ
    "\u00D2" => 'o', # Ò
    "\u00D3" => 'o', # Ó
    "\u00D4" => 'o', # Ô
    "\u00D5" => 'o', # Õ
    "\u00D6" => 'o', # Ö
    "\u00D7" => 'x', # ×
    "\u00D8" => 'o', # Ø
    "\u00D9" => 'u', # Ù
    "\u00DA" => 'u', # Ú
    "\u00DB" => 'u', # Û
    "\u00DC" => 'u', # Ü
    "\u00DD" => 'y', # Ý
    "\u00DE" => 'p', # Þ
    "\u00DF" => 'b', # ß
    "\u00E0" => 'a', # à
    "\u00E1" => 'a', # á
    "\u00E2" => 'a', # â
    "\u00E3" => 'a', # ã
    "\u00E4" => 'a', # ä
    "\u00E5" => 'a', # å
    "\u00E6" => 'a', # æ
    "\u00E7" => 'c', # ç
    "\u00E8" => 'e', # è
    "\u00E9" => 'e', # é
    "\u00EA" => 'e', # ê
    "\u00EB" => 'e', # ë
    "\u00EC" => 'i', # ì
    "\u00ED" => 'i', # í
    "\u00EE" => 'i', # î
    "\u00EF" => 'i', # ï
    "\u00F0" => 'd', # ð
    "\u00F1" => 'ñ', # ñ
    "\u00F2" => 'o', # ò
    "\u00F3" => 'o', # ó
    "\u00F4" => 'o', # ô
    "\u00F5" => 'o', # õ
    "\u00F6" => 'o', # ö
    "\u00F7" => '%', # ÷
    "\u00F8" => 'o', # ø
    "\u00F9" => 'u', # ù
    "\u00FA" => 'u', # ú
    "\u00FB" => 'u', # û
    "\u00FC" => 'u', # ü
    "\u00FD" => 'y', # ý
    "\u00FE" => 'p', # þ
    "\u00FF" => 'y',  # ÿ
    
    "\u017D" => 'z'  # Ž
  }
  def convert_to_common_chars str
      s=""
      str.force_encoding("utf-8").downcase.each_char do |char|
        c=COMMON_CHAR_OF[char]
        if c.nil?
          s<<char
       
        else
          s<<c
        end
        
      end
      s
  end
  def pos_filter pls , pos
    return pls if pos.nil?
    r=Array.new
    pls.each do |p|
      if match_pos p, pos
        r<<p
      end
     end
     r
  end
  def match_pos p, pos
    if pos[:orsearch] == "1"
            matched=false
          else
            matched=true
          end

    anypos=false
    pos.each_key do |k|
      if k!="orsearch" and pos[k]=="1"
        anypos=true
        case 
        when k=="PT"  
          if pos[:orsearch] == "1"
            return true if p.gk =="A"
          else
            matched= (matched and p.gk=="A") 
            
          end
        when k=="DC"  
          if pos[:orsearch] == "1"
            return true if p.cb=="A"
          else
            matched= (matched and p.cb=="A")  
          end
        when k=="LI"  
          if pos[:orsearch] == "1"
            return true if p.lb=="A"
          else
            matched= (matched and p.lb=="A")  
          end
        when k=="LD"  
          if pos[:orsearch] == "1"
            return true if p.rb=="A"
          else
            matched= (matched and p.rb=="A")  
          end
        when k=="MCD"  
          if pos[:orsearch] == "1"
            return true if p.dmf=="A"
          else
            matched= (matched and p.dmf=="A")  
          end
        when k=="MC"  
          if pos[:orsearch] == "1"
            return true if p.cmf=="A"
          else
            matched= (matched and p.cmf=="A")  
          end
        when k=="II"  
          if pos[:orsearch] == "1"
            return true if p.lmf=="A"
          else
            matched= (matched and p.lmf=="A")  
          end
        when k=="ID"  
          if pos[:orsearch] == "1"
            return true if p.rmf=="A"
          else
            matched= (matched and p.rmf=="A")  
          end
        when k=="MP"  
          if pos[:orsearch] == "1"
            return true if p.amf=="A"
          else
            matched= (matched and p.amf=="A")  
          end
        when k=="EI"  
          if pos[:orsearch] == "1"
            return true if p.lwf=="A"
          else
            matched= (matched and p.lwf=="A")  
          end
        when k=="ED"  
          if pos[:orsearch] == "1"
            return true if p.rwf=="A"
          else
            matched= (matched and p.rwf=="A")  
          end
        when k=="SD"  
          if pos[:orsearch] == "1"
            return true if p.ss=="A"
          else
            matched= (matched and p.ss=="A")  
          end
        when k=="CF"  
          if pos[:orsearch] == "1"
            return true if p.cf=="A"
          else
            matched= (matched and p.cf=="A")  
          end
        end
      end
    end
     (not anypos ) or matched
  end
  def age_filter pls, min, max
    return pls if (min.nil? or min.empty?) and (max.nil? or max.empty?)
    r=Array.new
    pls.each do |p|
      if match_age p, min, max
        r<<p
      end
     end
     r
  end
  def match_age p, min, max
    if min.nil? or min.empty?
      return true if p.age <= max.to_i
     elsif max.nil? or max.empty?
       return true if p.age >= min.to_i
     else
       return true if p.age >= min.to_i and p.age <=max.to_i
    end
    return false
  end
  def rat_filter pls, min, max
    return pls if (min.nil? or min.empty?) and (max.nil? or max.empty?)
    r=Array.new
    pls.each do |p|
      if match_rat p, min, max
        r<<p
      end
     end
     r
  end
  def match_rat p, min, max
    if min.nil? or min.empty?
      return true if p.overallrating <= max.to_i
     elsif max.nil? or max.empty?
       return true if p.overallrating >= min.to_i
     else
       return true if p.overallrating >= min.to_i and p.overallrating <=max.to_i
    end
    return false
  end  
  def calculateOverall player 
    
    case 
        when player.position=="GK"  
          overall = (player.goalkeeping - 25) * 0.52 + (player.saving - 25) * 0.52 + (player.bodyBalance - 25) * 0.12 + (player.jump - 25) * 0.12 + 7
        when player.position=="CB"
          overall = (player.header - 25) * 0.2 + (player.defensiveProwess - 25) * 0.27 + (player.ballWinning - 25) * 0.27 + (player.speed - 25) * 0.11 + (player.bodyBalance - 25) * 0.21 + (player.jump - 25) * 0.21 + (player.stamina - 25) * 0.1 + 7 
        when player.position=="RB"
          overall = (player.attackingProwess - 25) * 0.06 + (player.ballControl - 25) * 0.1 + (player.dribbling - 25) * 0.15 + (player.loftedPass - 25) * 0.15 + (player.defensiveProwess - 25) * 0.15 + (player.ballWinning - 25) * 0.14 + (player.speed - 25) * 0.15 + (player.explosivePower - 25) * 0.15 + (player.bodyBalance - 25) * 0.12 + (player.jump - 25) * 0.12 + (player.stamina - 25) * 0.13 + 8 
        when player.position=="LB"
          overall = (player.attackingProwess - 25) * 0.06 + (player.ballControl - 25) * 0.1 + (player.dribbling - 25) * 0.15 + (player.loftedPass - 25) * 0.15 + (player.defensiveProwess - 25) * 0.15 + (player.ballWinning - 25) * 0.14 + (player.speed - 25) * 0.15 + (player.explosivePower - 25) * 0.15 + (player.bodyBalance - 25) * 0.12 + (player.jump - 25) * 0.12 + (player.stamina - 25) * 0.13 + 8
        when player.position=="DMF"
          overall = (player.attackingProwess - 25) * 0.07 + (player.ballControl - 25) * 0.19 + (player.dribbling - 25) * 0.16 + (player.lowPass - 25) * 0.19 + (player.loftedPass - 25) * 0.2 + (player.controlledSpin - 25) * 0.13 + (player.defensiveProwess - 25) * 0.07 + (player.ballWinning - 25) * 0.03 + (player.speed - 25) * 0.03 + (player.explosivePower - 25) * 0.03 + (player.bodyBalance - 25) * 0.14 + (player.jump - 25) * 0.05 + (player.stamina - 25) * 0.15 + 8 
        when player.position=="CMF"
          overall = (player.attackingProwess - 25) * 0.05 + (player.ballControl - 25) * 0.25 + (player.dribbling - 25) * 0.25 + (player.lowPass - 25) * 0.25 + (player.loftedPass - 25) * 0.22 + (player.defensiveProwess - 25) * 0.03 + (player.speed - 25) * 0.04 + (player.explosivePower - 25) * 0.06 + (player.bodyBalance - 25) * 0.05 + (player.stamina - 25) * 0.18 + 7 
        when player.position=="AMF"
          overall = (player.attackingProwess - 25) * 0.15 + (player.ballControl - 25) * 0.23 + (player.dribbling - 25) * 0.23 + (player.lowPass - 25) * 0.23 + (player.loftedPass - 25) * 0.15 + (player.finishing - 25) * 0.18 + (player.speed - 25) * 0.05 + (player.explosivePower - 25) * 0.07 + (player.bodyBalance - 25) * 0.05 + (player.stamina - 25) * 0.03 + 7 
        when player.position=="RMF"
          overall = (player.attackingProwess - 25) * 0.07 + (player.ballControl - 25) * 0.16 + (player.dribbling - 25) * 0.26 + (player.lowPass - 25) * 0.07 + (player.loftedPass - 25) * 0.13 + (player.controlledSpin - 25) * 0.04 + (player.speed - 25) * 0.26 + (player.explosivePower - 25) * 0.23 + (player.stamina - 25) * 0.14 + 7 
        when player.position=="LMF"
          overall = (player.attackingProwess - 25) * 0.07 + (player.ballControl - 25) * 0.16 + (player.dribbling - 25) * 0.26 + (player.lowPass - 25) * 0.07 + (player.loftedPass - 25) * 0.13 + (player.controlledSpin - 25) * 0.04 + (player.speed - 25) * 0.26 + (player.explosivePower - 25) * 0.23 + (player.stamina - 25) * 0.14 + 7 
        when player.position=="SS"
          overall = (player.attackingProwess - 25) * 0.16 + (player.ballControl - 25) * 0.2 + (player.dribbling - 25) * 0.2 + (player.lowPass - 25) * 0.1 + (player.loftedPass - 25) * 0.1 + (player.finishing - 25) * 0.15 + (player.kickingPower - 25) * 0.06 + (player.speed - 25) * 0.1 + (player.explosivePower - 25) * 0.2 + (player.bodyBalance - 25) * 0.07 + (player.stamina - 25) * 0.04 + 7
        when player.position=="CF"
          overall = (player.attackingProwess - 25) * 0.33 + (player.ballControl - 25) * 0.25 + (player.dribbling - 25) * 0.15 + (player.finishing - 25) * 0.38 + (player.header - 25) * 0.03 + (player.speed - 25) * 0.05 + (player.explosivePower - 25) * 0.05 + (player.bodyBalance - 25) * 0.1 + (player.jump - 25) * 0.03 + 7
        when player.position=="LWF"
          overall = (player.attackingProwess - 25) * 0.18 + (player.ballControl - 25) * 0.22 + (player.dribbling - 25) * 0.22 + (player.lowPass - 25) * 0.05 + (player.loftedPass - 25) * 0.1 + (player.finishing - 25) * 0.12 + (player.kickingPower - 25) * 0.05 + (player.speed - 25) * 0.16 + (player.explosivePower - 25) * 0.16 + (player.bodyBalance - 25) * 0.06 + (player.stamina - 25) * 0.06 + 9 
        when player.position=="RWF"
          overall = (player.attackingProwess - 25) * 0.18 + (player.ballControl - 25) * 0.22 + (player.dribbling - 25) * 0.22 + (player.lowPass - 25) * 0.05 + (player.loftedPass - 25) * 0.1 + (player.finishing - 25) * 0.12 + (player.kickingPower - 25) * 0.05 + (player.speed - 25) * 0.16 + (player.explosivePower - 25) * 0.16 + (player.bodyBalance - 25) * 0.06 + (player.stamina - 25) * 0.06 + 9 
    end
    overall
  end
  
  def getPhysicalStrength player
    (( (player.ballWinning * 0.7) + (player.bodyBalance * 1.3) )/2).round
  end
  def getCovering player
    (((player.defensiveProwess * 1.5) + (player.speed * 0.5) )/2).round
  end
  def getStrengthInTheAir player
    ((player.header + player.jump + player.bodyBalance)/3.0).round
  end
  def getLongballAccuracy player
    if player.position=='GK'
     ( ((player.loftedPass * 1.5) + (player.kickingPower * 0.5) )/2.0).round
    else
      (((player.loftedPass * 1.5) + (player.kickingPower * 0.5) + 10 )/2.0).round
    end
  end
  def getSpeedAndAgility player
    ((player.speed + player.explosivePower)/2.0).round
  end
  def getFreeKick player
    (( (player.placeKicking * 1.3) + (player.controlledSpin * 0.7) )/2.0).round
  end
  def getCornerKick player
    (( (player.placeKicking * 0.5) + (player.loftedPass * 1.5) + player.controlledSpin )/3.0).round
  end
  def getPenalties player
   ( ((player.placeKicking * 1.2) + (player.tenacity * 0.8) )/2.0).round
  end
  def getScoringInstinct player
     (( (player.finishing * 1.3) + (player.tenacity * 0.5) + (player.attackingProwess * 1.2) )/3.0).round
  end
  def getHeader player
     (( (player.finishing * 1.1) + (player.jump * 0.9) + player.header )/3.0).round
  end
  def getBallRetention player
   ( ( (player.bodyBalance * 0.8) + (player.dribbling * 1.1) + (player.loftedPass * 1.1) )/3.0).round
  end
  def getElusiveness player
    (((player.attackingProwess * 0.8) + (player.explosivePower * 1.2) )/2.0).round
  end
  def getDribbleSpeed player
    (( (player.dribbling * 0.7) + (player.speed * 1.3) )/2.0).round
  end
  def getFinalBall player
    (( (player.lowPass * 1.3) + (player.loftedPass * 0.7) + player.ballControl )/3.0).round
  end
  def getVision player
   ( ( (player.loftedPass * 1.6) + (player.lowPass * 0.4) )/2.0).round
  end
  def getPenetration player
    ( ( (player.dribbling * 1.1) + (player.speed * 1.1) + (player.explosivePower * 0.8) )/3.0).round
  end
  def getWorkRate player
    (( (player.stamina * 1.3) + (player.tenacity * 0.7) )/2.0).round
  end
  def getIntercepting player
     (( player.defensiveProwess + (player.explosivePower * 0.8) + (player.ballWinning * 1.2) )/3.0).round
  end
  def getMarauding player
    (( player.explosivePower + player.goalkeeping )/2.0).round
  end
  def getHandlingHighBalls player
     (( (player.jump * 1.3) + (player.bodyBalance * 0.7) + player.goalkeeping )/3.0).round
  end
  def getOneOnOne player
   ( ( player.tenacity + player.goalkeeping )/2.0).round
  end
  def getOutfieldSkills player
    wa = 0.5 + ( (player.lowPass * 1.5) + (player.dribbling * 0.8) + (player.ballControl * 0.7))/3.0
    if wa < 70
      f=(wa-40)/30.0
    else
      f=1
    end
    (wa+(wa*f*0.4)).floor
        
  end
  def getConsistency player
    ((((player.form - 1)*14) + 1 + player.goalkeeping + player.tenacity)/3.0).round
  end
  
  def getPosStyle player , pos
   result=""
    case 
    when pos=="GK" then 
      if player.gk == "A"
        result='opacity:.8;background-color:#FFFF00;'
      elsif player.gk == "B"
        result='opacity:.3;background-color:#FFFF00;'
      end
    when pos=="CB" then 
      if player.cb == "A"
        result='opacity:.8;background-color:#0088DD;'
      elsif player.cb == "B"
        result='opacity:.3;background-color:#0088DD;'
      end
    when pos=="RB" then 
      if player.rb == "A"
        result='opacity:.8;background-color:#0088DD;'
      elsif player.rb == "B"
        result='opacity:.3;background-color:#0088DD;'
      end
    when pos=="LB" then 
      if player.lb == "A"
        result='opacity:.8;background-color:#0088DD;'
      elsif player.lb == "B"
        result='opacity:.3;background-color:#0088DD;'
      end
    when pos=="DMF" then 
      if player.dmf == "A"
        result='opacity:.8;background-color:#00FF00;'
      elsif player.dmf == "B"
        result='opacity:.3;background-color:#00FF00;'
      end
    when pos=="CMF" then 
      if player.cmf == "A"
        result='opacity:.8;background-color:#00FF00;'
      elsif player.cmf == "B"
       result= 'opacity:.3;background-color:#00FF00;'
      end
    when pos=="RMF" then 
      if player.rmf == "A"
        result='opacity:.8;background-color:#00FF00;'
      elsif player.rmf == "B"
        result='opacity:.3;background-color:#00FF00;'
      end
    when pos=="LMF" then 
      if player.lmf == "A"
        result='opacity:.8;background-color:#00FF00;'
      elsif player.lmf == "B"
        result='opacity:.3;background-color:#00FF00;'
      end
    when pos=="AMF" then 
      if player.amf == "A"
        result='opacity:.8;background-color:#00FF00;'
      elsif player.amf == "B"
        result='opacity:.3;background-color:#00FF00;'
      end
    when pos=="RWF" then 
      if player.rwf == "A"
        result='opacity:.8;background-color:#FF0000;'
      elsif player.rwf == "B"
        result='opacity:.3;background-color:#FF0000;'
      end
    when pos=="LWF" then 
      if player.lwf == "A"
       result= 'opacity:.8;background-color:#FF0000;'
      elsif player.lwf == "B"
       result= 'opacity:.3;background-color:#FF0000;'
      end
    when pos=="SS" then 
      if player.ss == "A"
       result= 'opacity:.8;background-color:#FF0000;'
      elsif player.ss == "B"
       result= 'opacity:.3;background-color:#FF0000;'
      end
    when pos=="CF" then 
      if player.cf == "A"
        result='opacity:.8;background-color:#FF0000;'
      elsif player.cf == "B"
       result= 'opacity:.3;background-color:#FF0000;'
      end
    end
    result
  end
end
