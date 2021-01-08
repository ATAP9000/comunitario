require 'test_helper'

class IngresarControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get ingresar_index_url
    assert_response :success
  end

end
