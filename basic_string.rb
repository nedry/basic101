module Basic

  class BasicString

    attr_reader :value

    def initialize(value)
      @value = value.to_s
    end

    def ==(other)
      return false unless other.is_a?(self.class)
      self.value == other.value
    end

    def eval(program)
      self
    end

    def to_s
      @value
    end

    def print_string(output)
      output.print @value
    end

    def print_new_line(output)
      output.print "\n"
    end

    def simplest
      self
    end

  end

end
