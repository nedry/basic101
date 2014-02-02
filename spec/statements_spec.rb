require_relative 'spec_helper'

module Basic

  describe Statements do

    let(:line1) {Statement.new(10, 'REM a')}
    let(:line2) {Statement.new(20, 'REM b')}
    let(:line3) {Statement.new(nil, 'REM c')}

    subject(:statements) {described_class.new}

    before(:each) do
      statements << line1
      statements << line2
      statements << line3
    end

    describe '#lines' do
      specify do
        expect(statements.statements).to eq [line1, line2, line3]
      end
    end

    describe '#[]' do
      specify do
        expect(statements[0]).to eq line1
        expect(statements[1]).to eq line2
        expect(statements[2]).to eq line3
        expect(statements[3]).to be_nil
      end
    end

    describe '#index_of' do
      specify do
        expect(statements.index_of(10)).to eq 0
        expect(statements.index_of(20)).to eq 1
        expect {
          statements.index_of(30)
        }.to raise_error(UndefinedLineNumberError,
                         "Undefined line number 30")
      end
    end

  end

end