# frozen_string_literal: true

require_relative 'statement'

module Basic101

  class ClsStatement < Statement

    def execute(runtime)
      #@reference.assign(runtime, @expression.eval(runtime))
      runtime.output.print "\e[2J"
    end

  end

end
