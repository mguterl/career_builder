require 'spec_helper'

describe CareerBuilder::Resume do

  context 'when fetching the full resume generates a connection error' do

    let(:resume) { CareerBuilder::Resume.new(client, partial_resume) }

    let(:client) { CareerBuilder::Client.new('valid_email', 'valid_password') }
    let(:partial_resume) { double(:id => 42) }
    let(:full_resume) { double(:contact_email => 'foo@bar.com') }

    before do
      client.should_receive(:get_resume).once.and_raise(Errno::ECONNRESET)
      client.should_receive(:get_resume).at_most(:once).and_return(full_resume)
    end

    it 'retries, working around the connection errors' do
      resume.real_contact_email.should == 'foo@bar.com'
    end

    it 'uses connection_retry_count to determine how many times to retry' do
      client.connection_retry_count = 0

      expect {
        resume.real_contact_email
      }.to raise_error(Errno::ECONNRESET)
    end
  end

end
