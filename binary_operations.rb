module Basic

  class BinaryOperations

    def initialize(left, operations)
      @left = left
      @operations = operations
    end

    def eval(program)
      @operations.inject(@left) do |result, operation|
        operation.operate(result, program)
      end
    end

    def ==(other)
      return false unless other.is_a?(self.class)
      self.state == other.state
    end

    protected

    def state
      [@left, @operations]
    end

  end

end