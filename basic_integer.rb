module Basic

  class BasicInteger

    def initialize(value)
      @value = value
    end

    def ==(other)
      return false unless other.is_a?(self.class)
      self.value == other.value
    end

    def eval(program)
      self
    end

    def to_i
      @value
    end

    def print_string(output)
      output.print @value.to_s
    end

    def print_new_line(output)
      output.print "\n"
    end

    protected

    attr_reader :value

  end

end