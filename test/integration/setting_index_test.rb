require 'test_helper'

class SettingIndexTest < ActionDispatch::IntegrationTest
  test 'returns expected response when visiting the index' do
    Setting.create(key: 'HELLO', value: 'WORLD')
    get '/realiser'
    assert_equal status, 200
    assert_equal(response.body.include?('HELLO'), true)
    assert_equal(response.body.include?('WORLD'), true)
  end
end
