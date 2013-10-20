require 'test_helper'

class Api::V1::TracksControllerTest < ActionController::TestCase

  test "should return a list of all tracks" do
  	publication = publications(:one)
  	xhr :get, :index
  	assert_response 200
  	assert_equal "My amazing song", json['tracks'].first['title']
  end

end