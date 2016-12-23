require 'spec_helper'

describe TimeSpent do

  context 'when markins is even' do
    it 'should return 01:00 hour' do

    	markings = ['8:00','9:00']
      expect(TimeSpent::Markings.new.calculate(Time.now, markings)).to eq "01:00"
    end


    it 'should return 04:45 hour' do

    	markings = ['8:00','10:00', '14:10', '16:55']
      expect(TimeSpent::Markings.new.calculate(Time.now, markings)).to eq "04:45"
    end
  end

  context 'when markins is odd' do
    it 'should raise MarkingsNotEven' do
      expect {TimeSpent::Markings.new.calculate(Time.now, ['8:15'])}.to raise_error(TimeSpent::Exceptions::MarkingsNotEven)
    end
  end

end
