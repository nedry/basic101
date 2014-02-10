module Basic

  class NumericIdentifier < Identifier

    def read(input_reader)
      value = input_reader.read_numeric
      wrap_value(value).simplest
    end

  end

end