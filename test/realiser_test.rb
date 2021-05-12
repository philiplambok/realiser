require 'test_helper'

class RealiserTest < ActiveSupport::TestCase
  test 'it has a version number' do
    assert Realiser::VERSION
  end

  test 'returns expected response with array getter' do
    Setting.create(key: 'HELLO', value: 'WORLD')
    setting = Setting['HELLO']
    assert_equal(setting, 'WORLD')
  end
end
