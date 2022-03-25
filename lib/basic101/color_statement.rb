# frozen_string_literal: true

require_relative 'statement'

module Basic101


    class ColorStatement < Statement

COLORTABLE = {

  12 => "\e[1;31m", 4 => "\e[31m", #red
  10 => "\e[1;32m", 2 => "\e[32m",  #green
  14 => "\e[1;33m", 6 => "\e[33m", #yellow
  13 => "\e[1;35m",5 => "\e[35m", #magenta
  11 => "\e[1;36m", 3 => "\e[36m",   #cyan
  15 => "\e[1;37m",7 => "\e[31m", #white
  9 => "\e[34m", 1 => "\e[34m",   #blue
  0 => "\e[30m"}
  
  
    def initialize(color)
      @color = color
    end

   def execute(runtime)
	out = COLORTABLE[@color.to_i]
	runtime.output.print out if !out.nil?#}
    end

  end

end
 
