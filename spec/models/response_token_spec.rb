require 'spec_helper'
require 'json'
require 'date'


describe 'ResponseToken' do
  before { @instance = BancoBrasilClientCredentials::ResponseToken.new }

  describe 'test an instance of ResponseToken' do
    it 'should create an instance of ResponseToken' do
      expect(@instance).to be_instance_of(BancoBrasilClientCredentials::ResponseToken)
    end
  end
end
