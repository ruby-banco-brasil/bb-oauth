require 'spec_helper'
require 'json'
require 'date'

describe 'Body' do
  before { @instance = BancoBrasilClientCredentials::Body.new }

  describe 'test an instance of Body' do
    it 'should create an instance of Body' do
      expect(@instance).to be_instance_of(BancoBrasilClientCredentials::Body)
    end
  end
end
