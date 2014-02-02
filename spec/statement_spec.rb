require_relative 'spec_helper'

module Basic

  describe Statement do

    let(:line_number) {10}
    let(:source) {'REM'}
    subject(:line) {Statement.new(line_number, source)}

    its(:line_number) {should eq line_number}
    its(:source) {should eq source}

    describe '.parse' do

      context 'when normal' do
        specify do
          expect(Statement.parse('20 REM FOO')).to eq [
            Statement.new(20, 'REM FOO')
          ]
        end
      end

      context 'when extra spaces' do
        specify do
          expect(Statement.parse(' 20  REM FOO ')).to eq [
            Statement.new(20, 'REM FOO'),
          ]
        end
      end

      context 'when line number only' do
        specify do
          expect {
            Statement.parse('20')
          }.to raise_error SyntaxError, 'Syntax error: 20'
        end
      end

      context 'when missing line number' do
        specify do
          expect {
            Statement.parse('REM')
          }.to raise_error SyntaxError, 'Syntax error: REM'
        end
      end

    end

    describe 'comparison' do

      context 'when equal' do
        specify do
          expect(Statement.new(10, 'REM A') <=>
                 Statement.new(10, 'REM A')).to eq 0
        end
      end

      context 'when line number less' do
        specify do
          expect(Statement.new(10, 'REM A') <=>
                 Statement.new(20, 'REM A')).to eq -1
        end
      end

      context 'when source greater' do
        specify do
          expect(Statement.new(10, 'REM B') <=>
                 Statement.new(10, 'REM A')).to eq +1
        end
      end

    end

  end

end