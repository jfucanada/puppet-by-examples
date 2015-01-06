require 'spec_helper'
describe 'first' do

  context 'with defaults for all parameters' do
    it { should contain_class('first') }
  end
end
