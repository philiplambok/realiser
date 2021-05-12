require 'test_helper'

class SettingDestroyTest < ActionDispatch::IntegrationTest
  test 'returns expected status code' do
    setting = Setting.create(key: 'HELLO', value: 'WORLD')
    delete "/realiser/web/settings/#{setting.id}"
    follow_redirect!
    assert_equal status, 200
    assert_equal(response.body.include?('HELLO'), false)
    assert_equal(response.body.include?('WORLD'), false)
    assert_equal(response.body.include?('Successfully deleted the setting'), true)
    setting = Setting.find_by(key: 'HELLO')
    assert_equal(setting.blank?, true)
  end
end
