# frozen_string_literal: true

module Basic101

  class Parser < Parslet::Parser

    rule(:randomize_statement) do
      str('RANDOMIZE').as(:randomize) >> space? >> str('TIMER').maybe
    end

  end

end
