require 'test_helper'

class CategoryControllerTest < ActionDispatch::IntegrationTest
  test "should get name" do
    get category_name_url
    assert_response :success
  end

  test "should get collection:belongs_to" do
    get category_collection:belongs_to_url
    assert_response :success
  end

end
