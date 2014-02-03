require_relative 'statement'

module Basic

  class PrintStatement < Statement

    def initialize(line_number = nil, args = [])
      super(line_number)
      @args = args
    end

    def execute(program)
      @args.each do |arg|
        arg.eval.print_string program.output
      end
      @args.last.eval.print_new_line program.output
      program.goto_next
    end

    protected

    def state
      super + [@args]
    end

  end

end
