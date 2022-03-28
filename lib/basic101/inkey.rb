# frozen_string_literal: true

module Basic101

  class Inkey

    def initialize(output, file = $stdout)
      @file = file
      @output = output
      @transcript = NullTranscript.new
    end

    def transcript=(transcript)
      @transcript = transcript
    end

    def read_char
      char = select([@file],nil,nil,0.1)
      
      @transcript.save_output "\n"
      @transcript.save_input char
      char
    end

    private

    def echo(s)
      return unless echo?
      @output.echo s
    end

    def isatty
      @file.isatty
    end

    def echo?
      !(isatty && @output.isatty)
    end

  end

end
