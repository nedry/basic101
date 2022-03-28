# frozen_string_literal: true

require_relative 'function'

module Basic101

  class InkeyFunction < Function

    def name
      'INKEY$'
    end

    def call(runtime, args)
      value = Inkey.new(@output,$stdin).read_char
    end

  end

end
