require 'test_helper'

class SettingCreateTest < ActionDispatch::IntegrationTest
  test 'returns expected status code' do
    post '/realiser/web/settings', params: { setting: { key: 'HELLO', value: 'WORLD' } }
    follow_redirect!
    assert_equal status, 200
    assert_equal(response.body.include?('HELLO'), true)
    assert_equal(response.body.include?('WORLD'), true)
    assert_equal(response.body.include?('Succesfully created a new setting'), true)
  end
end
