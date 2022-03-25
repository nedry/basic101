# frozen_string_literal: true

module Basic101

  class Parser < Parslet::Parser

    rule(:color_statement) do
       str('COLOR').as(:color) >> (space? >> integer).as(:color_code) >> 
        (space? >> str(',') >> space? >> integer).maybe.as(:bg_colorcode)
	
    end
    
  end

end
