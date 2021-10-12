require './lib/program'

RSpec.describe Program do
  describe 'convert 5 C to K' do
    subject { Program.new.convert('C', 'K', 5) }
    it { is_expected.to eq 278.15 }
  end

  describe 'convert 278.15 K to C' do
    subject { Program.new.convert('K', 'C', 278.15) }
    it { is_expected.to eq 5 }
  end

  describe 'convert 86 F to C' do
    subject { Program.new.convert('F', 'C', 86) }
    it { is_expected.to eq 30 }
  end

  describe 'convert 30 C to F' do
    subject { Program.new.convert('C', 'F', 30) }
    it { is_expected.to eq 86 }
  end

  describe 'convert 23 F to K' do
    subject { Program.new.convert('F', 'K', 23) }
    it { is_expected.to eq 268.15 }
  end

  describe 'convert 268.15 K to F' do
    subject { Program.new.convert('K', 'F', 268.15) }
    it { is_expected.to eq 23 }
  end
end
