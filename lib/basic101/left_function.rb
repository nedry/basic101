module Basic101

  class LeftFunction

    def name
      'LEFT$'
    end

    def call(runtime, args)
      raise IllegalFunctionCall unless args.size == 2
      string, count = *args
      string = string.eval(runtime).to_string
      count = count.eval(runtime).to_integer
      string.left(count)
    end

  end

end