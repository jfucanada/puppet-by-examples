require 'spec_helper'
describe 'box' do

  context 'with defaults for all parameters' do
    it { should contain_class('box') }
  end
end
