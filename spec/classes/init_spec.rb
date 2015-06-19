require 'spec_helper'
describe 'customrepos' do

  context 'with defaults for all parameters' do
    it { should contain_class('customrepos') }
  end
end
