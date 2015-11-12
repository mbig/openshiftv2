require 'spec_helper'
describe 'openshiftv2' do

  context 'with defaults for all parameters' do
    it { should contain_class('openshiftv2') }
  end
end
