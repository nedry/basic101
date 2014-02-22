module Basic101

  class BinaryOperation

    def initialize(operator, right)
      @operator = operator
      @right = right
    end

    def ==(other)
      return false unless other.is_a?(self.class)
      self.state == other.state
    end

    def operate(left, runtime)
      if @operator.is_a?(Symbol)
        left_value = left.eval(runtime)
        right_value = @right.eval(runtime)
        left_value.public_send(@operator, right_value)
      else
        @operator.operate(left, @right, runtime)
      end
    end

    protected

    def state
      [@operator, @right]
    end

  end

end