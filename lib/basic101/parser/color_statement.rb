# frozen_string_literal: true

module Basic101

  class Parser < Parslet::Parser

    rule(:color_statement) do
       str('COLOR').as(:color) >> (space? >> integer).as(:color_code)
    end
    
  end

end
