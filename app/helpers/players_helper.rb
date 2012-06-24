#coding: utf-8
module PlayersHelper
  
  def getPrice rating
    (((rating/10.0)**8)/1E6).round(2)
  end
  def getSellingPrice rating
    (((rating/10.0)**8)/1.5E6).round(2)
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
  def get100StatColor stat
    if stat < 70
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
    when pos=="RWF" then image_tag "/assets/ED_ON.png"
    when pos=="LWF" then image_tag "/assets/EI_ON.png"
    when pos=="SS" then image_tag "/assets/SP_ON.png"
    when pos=="CF" then image_tag "/assets/DC_ON.png"
    end

  end
  def getPositionOrder pos
    case 
    when pos=="GK" then "1"
    when pos=="SWP" then "2"
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
    "\u00FF" => 'y'  # ÿ
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
            return true if p.gk
          else
            matched= (matched and p.gk) 
            
          end
        when k=="DC"  
          if pos[:orsearch] == "1"
            return true if p.cb
          else
            matched= (matched and p.cb)  
          end
        when k=="LIB"  
          if pos[:orsearch] == "1"
            return true if p.swp
          else
            matched= (matched and p.swp)  
          end
        when k=="LI"  
          if pos[:orsearch] == "1"
            return true if p.lb
          else
            matched= (matched and p.lb)  
          end
        when k=="LD"  
          if pos[:orsearch] == "1"
            return true if p.rb
          else
            matched= (matched and p.rb)  
          end
        when k=="MCD"  
          if pos[:orsearch] == "1"
            return true if p.dmf
          else
            matched= (matched and p.dmf)  
          end
        when k=="MC"  
          if pos[:orsearch] == "1"
            return true if p.cmf
          else
            matched= (matched and p.cmf)  
          end
        when k=="II"  
          if pos[:orsearch] == "1"
            return true if p.lmf
          else
            matched= (matched and p.lmf)  
          end
        when k=="ID"  
          if pos[:orsearch] == "1"
            return true if p.rmf
          else
            matched= (matched and p.rmf)  
          end
        when k=="MP"  
          if pos[:orsearch] == "1"
            return true if p.amf
          else
            matched= (matched and p.amf)  
          end
        when k=="EI"  
          if pos[:orsearch] == "1"
            return true if p.lwf
          else
            matched= (matched and p.lwf)  
          end
        when k=="ED"  
          if pos[:orsearch] == "1"
            return true if p.rwf
          else
            matched= (matched and p.rwf)  
          end
        when k=="SD"  
          if pos[:orsearch] == "1"
            return true if p.ss
          else
            matched= (matched and p.ss)  
          end
        when k=="CF"  
          if pos[:orsearch] == "1"
            return true if p.cf
          else
            matched= (matched and p.cf)  
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
      return true if p.overallRating <= max.to_i
     elsif max.nil? or max.empty?
       return true if p.overallRating >= min.to_i
     else
       return true if p.overallRating >= min.to_i and p.overallRating <=max.to_i
    end
    return false
  end  
end
