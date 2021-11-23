require './lib/transfer'

RSpec.describe TemperatureTransfer do
  describe 'Creating' do
    it 'Initialize t' do
      test = 0.0
      temp = TemperatureTransfer.new
      temp.t = 0.0
      temp.t == test
    end

    it 'Initialize method' do
      test = 'KC'
      temp = TemperatureTransfer.new
      temp.method = 'KC'
      temp.method == test
    end
  end

  describe 'Transferring' do
    context '0C to F' do
      test = 32.0
      temp = TemperatureTransfer.new
      temp.t = 0.0
      temp.method = 'CF'
      subject { temp.choose_method }
      it { is_expected.to eq test }
    end

    context '0C to K' do
      test = 273.15
      temp = TemperatureTransfer.new
      temp.t = 0.0
      temp.method = 'CK'
      subject { temp.choose_method }
      it { is_expected.to eq test }
    end

    context '273.15K to C' do
      test = 0.0
      temp = TemperatureTransfer.new
      temp.t = 273.15
      temp.method = 'KC'
      subject { temp.choose_method }
      it { is_expected.to eq test }
    end

    context '32F to C' do
      test = 0.0
      temp = TemperatureTransfer.new
      temp.t = 32.0
      temp.method = 'FC'
      subject { temp.choose_method }
      it { is_expected.to eq test }
    end

    context '0F to K' do
      test = 255.37
      temp = TemperatureTransfer.new
      temp.t = 0.0
      temp.method = 'FK'
      subject { temp.choose_method.round(2) }
      it { is_expected.to eq test }
    end

    context '255.372K to F' do
      test = 0.0
      temp = TemperatureTransfer.new
      temp.t = 255.372
      temp.method = 'KF'
      subject { temp.choose_method.round(2) }
      it { is_expected.to eq test }
    end
  end
end
