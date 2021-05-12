require 'test_helper'

class SettingEditTest < ActionDispatch::IntegrationTest
  test 'returns expected status code' do
    setting = Setting.create(key: 'HELLO', value: 'WORLD')
    get "/realiser/web/settings/#{setting.id}/edit"
    assert_equal status, 200
  end
end