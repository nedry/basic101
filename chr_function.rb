module Basic

  class ChrFunction

    def name
      'CHR$'
    end

    def call(runtime, args)
      raise IllegalFunctionCall unless args.size == 1
      value = args.first.eval(runtime)
      value.to_integer.chr
    end

  end

end
