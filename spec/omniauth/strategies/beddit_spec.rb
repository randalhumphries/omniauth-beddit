require_relative '../../spec_helper'

describe "OmniAuth::Strategies::Beddit" do

  subject do

    OmniAuth::Strategies::Beddit.new(nil, @options || {})

  end

  describe 'response_type' do

    it 'includes :code' do
    
      expect(subject.options["response_type"]).to include('code')
    
    end
  
  end

end