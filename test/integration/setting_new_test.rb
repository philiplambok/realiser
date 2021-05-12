require 'test_helper'

class SettingNewTest < ActionDispatch::IntegrationTest
  test 'returns expected status code' do
    get '/realiser/web/settings/new'
    assert_equal status, 200
  end
end
