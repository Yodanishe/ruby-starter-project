require './lib/program'

RSpec.describe Program do
  describe '#run' do
    it 'Program work correct' do
      allow(Terminal).to receive(:gets).and_return("C\n", "F\n", "0\n", "n\n")
      Program.new.run
    end
  end
end