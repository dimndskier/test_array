require 'spec_helper'
describe 'test_array' do
  context 'with default values for all parameters' do
    it { should contain_class('test_array') }
  end
end
