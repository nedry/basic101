# frozen_string_literal: true

require_relative 'statement'

module Basic101


    class ColorStatement < Statement

FG_COLORTABLE = {

  12 => "\e[1;31m", 4 => "\e[31m", #red
  10 => "\e[1;32m", 2 => "\e[32m",  #green
  14 => "\e[1;33m", 6 => "\e[33m", #yellow
  9 => "\e[1;34m", 1 => "\e[34m",   #blue
  13 => "\e[1;35m",5 => "\e[35m", #magenta
  11 => "\e[1;36m", 3 => "\e[36m",   #cyan
  15 => "\e[1;37m",7 => "\e[31m", #white

  0 => "\e[30m"}
  
BG_COLORTABLE =  { 0 => "\e[40m", #reset
  12 => "\e[41m", 4 => "\e[41m", #red 
  10 => "\e[42m", 2 => "\e[42m", #green
  14 => "\e[43m",6 => "\e[44m", #yellow
  9 => "\e[44m", 1 => "\e[44m",   #blue
  13 => "\e[45m", 5 => "\e[45m", #magenta
  11 => "\e[46m", 3 => "\e[46m", #cyan
  15 => "\e[47m", 7 => "\e[47m"} #white

  
  
    def initialize(color,bg_color)
      @color = color
      @bg_color = bg_color
    end

   def execute(runtime)
	out = FG_COLORTABLE[@color.to_i]
	runtime.output.c_out out if !out.nil?
	out2 = BG_COLORTABLE[@bg_color.to_i]
	runtime.output.c_out out2 if !out2.nil?
    end

  end

end
 
