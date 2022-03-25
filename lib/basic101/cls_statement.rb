# frozen_string_literal: true

require_relative 'statement'

module Basic101

  class ClsStatement < Statement

    def execute(runtime)
      runtime.output.c_out "\e[40m\e[8]\e[H\e[J"
      
    end

  end

end
