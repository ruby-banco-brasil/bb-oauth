require 'spec_helper'
require 'json'

describe 'DefaultApi' do
  before { @instance = BancoBrasilClientCredentials::DefaultApi.new }

  describe 'test an instance of DefaultApi' do
    it 'should create an instance of DefaultApi' do
      expect(@instance).to be_instance_of(BancoBrasilClientCredentials::DefaultApi)
    end
  end
end
