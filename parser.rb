module Basic

  class Parser < Parslet::Parser
    rule(:space) {match(' ').repeat(1)}
    rule(:space?) {space.maybe}
    rule(:integer) {match('[0-9]').repeat(1)}
    rule(:printable) {match('[[:print:]]')}
    rule(:remark) {(str('REM') >> printable.repeat(0)).as(:remark)}
    rule(:print) {str('PRINT').as(:print)}
    rule(:statement) {remark | print}
    rule(:statements) {statement >>  (str(':') >> statement).repeat(0)}
    rule(:line) {integer.as(:line_number) >> space? >> statements.as(:statements)}
    root(:line)
  end

end
