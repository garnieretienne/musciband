require 'test_helper'

class Api::V1::PublicationsControllerTest < ActionController::TestCase

  test "should get a publication" do
  	publication = publications(:one)
  	xhr :get, :show, id: publication.id
  	assert_response 200
  	assert_equal "My first publication", json['title']
  end
  
  test "should updatea publication" do
    publication = publications(:one)
    xhr :put, :update, id: publication.id, publication: {title: "New Title"}
    assert_response 204
  end

end
