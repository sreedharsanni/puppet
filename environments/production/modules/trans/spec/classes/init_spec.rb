require 'spec_helper'
describe 'trans' do
  context 'with default values for all parameters' do
    it { should contain_class('trans') }
  end
end
