x = (250..750).select{|w| w.odd? == true}.inject(&:+)

puts x