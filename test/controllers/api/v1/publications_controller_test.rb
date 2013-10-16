require 'test_helper'

class Api::V1::PublicationsControllerTest < ActionController::TestCase

  test "should get a publication" do
  end
  
  test "should updatea publication" do
    publication = publications(:one)
    xhr :put, :update, id: publication.id, publication: {title: "New Title"}
    assert_response 204
  end

end
