require 'spec_helper'
describe 'variablescope' do
  context 'with default values for all parameters' do
    it { should contain_class('variablescope') }
  end
end
