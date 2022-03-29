# frozen_string_literal: true

require 'io/wait'
require 'io/console'

module Basic101

  class Inkey

    def initialize(output, file = $stdin)
      @file = file
      @output = output
      @transcript = NullTranscript.new
    end

    def transcript=(transcript)
      @transcript = transcript
    end



    def read_char
      old_attr = tcgetattr($stdin)
      input, output, control, local = old_attr.unpack("SSSS")
      local &= ~(ECHO)
      new_attr = [input, output, control, local].pack("SSSS")
      tcsetattr($stdin, new_attr)
      result = String.new
       rd, _, _ = IO.select([$stdin])
       result = rd[0].getc if !rd.nil?
       tcsetattr($stdin, old_attr)
       BasicString.new(result)
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
