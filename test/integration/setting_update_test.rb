require 'test_helper'

class SettingUpdateTest < ActionDispatch::IntegrationTest
  include Rails
  test 'returns expected response when params was valid' do
    setting = Setting.create(key: 'HELLO_3', value: 'WORLD_3')
    put "/realiser/web/settings/#{setting.id}", params: { setting: { key: 'HELLO_2', value: 'WORLD_2' } }
    follow_redirect!
    assert_equal(response.body.include?('Successfully to update the setting'), true)
    setting.reload
    assert_equal(setting.key, 'HELLO_2')
    assert_equal(setting.value, 'WORLD_2')
  end
end
