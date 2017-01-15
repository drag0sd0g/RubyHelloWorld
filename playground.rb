if __FILE__ == $0
  $LOAD_PATH << '.'
  require 'trig.rb'
  require 'moral.rb'  
  y = Trig.sin(Trig::PI/4)
  wrongdoing = Moral.sin(Moral::VERY_BAD)
end