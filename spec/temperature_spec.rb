require './lib/program'

RSpec.describe Temperature do
  temp = Temperature.new
  describe 'Creating' do
    it 'Initialize from' do
      test = 'C'
      temp.from = 'C'
      temp.from == test
    end

    it 'Initialize to' do
      test = 'F'
      temp.to = 'F'
      temp.to == test
    end

    it 'Initialize t1' do
      test = 0.0
      temp.temp_value = 0.0
      temp.temp_value == test
    end

    it 'Initialize t2' do
      test = 23.2
      temp.temp_converted = 23.2
      temp.temp_converted == test
    end
  end

  describe '#correct_scale?' do
    context 'Correct scale (C)' do
      subject { Temperature.new.is_correct?('C') }
      it { is_expected.to eq true }
    end

    context 'Incorrect scale (D)' do
      subject { Temperature.new.is_correct?('D') }
      it { is_expected.to eq false }
    end
  end

  describe '#number?' do
    context 'Correct value (30)' do
      subject { Temperature.new.is_float?('30') }
      it { is_expected.to eq true }
    end

    context 'Incorrect value (30o5)' do
      subject { Temperature.new.is_float?('30o5') }
      it { is_expected.to eq false }
    end
  end

  describe '#convert!' do
    it 'Check' do
      test = 32.0
      temp.from = 'C'
      temp.to = 'F'
      temp.temp_value = 0.0
      temp.convert!
      expect(temp.temp_converted).to eq test
    end
  end

  describe '#input_transfer_from!' do
    it 'Correct from (F)' do
      allow(Terminal).to receive(:gets).and_return("F\n")
      temp.input_transfer_from!
      expect(temp.from).to eq 'F'
    end
  end

  describe '#input_transfer_to!' do
    it 'Correct to (F)' do
      allow(Terminal).to receive(:gets).and_return("C\n")
      temp.input_transfer_to!
      expect(temp.to).to eq 'C'
    end
  end

  describe '#input_value!' do
    it 'Correct value (150)' do
      allow(Terminal).to receive(:gets).and_return("150\n")
      expect(temp.enter_value!).to eq 150
    end
  end
end
