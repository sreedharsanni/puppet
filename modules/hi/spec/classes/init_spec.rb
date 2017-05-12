require 'spec_helper'
describe 'hi' do
  context 'with default values for all parameters' do
    it { should contain_class('hi') }
  end
end
