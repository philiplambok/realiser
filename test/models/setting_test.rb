require 'test_helper'

class SettingTest < ActiveSupport::TestCase
  test 'returns expected response when access by []' do
    Setting.create(key: 'HELLO', value: 'WORLD')
    setting = Setting['HELLO']
    assert_equal(setting, 'WORLD')
  end

  test 'returns nil response when access by []' do
    Setting.create(key: 'HELLO', value: 'WORLD')
    setting = Setting['HELLO_WORLD']
    assert_nil(setting)
  end
end
