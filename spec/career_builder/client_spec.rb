require 'spec_helper'

describe CareerBuilder::Client do

  let(:client) { CareerBuilder::Client.new('valid_username', 'valid_password') }

  describe '#connection_retry_count' do

    it 'has a sane default value' do
      client.connection_retry_count.should == CareerBuilder::Client.connection_retry_count
    end

    it 'allows the value to be specified during creation' do
      client = CareerBuilder::Client.new('valid_username', 'valid_password', :connection_retry_count => 1)

      client.connection_retry_count.should == 1
    end
  end

end
