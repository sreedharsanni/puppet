require 'spec_helper'
describe 'njnxwebserver' do
  context 'with default values for all parameters' do
    it { should contain_class('njnxwebserver') }
  end
end
