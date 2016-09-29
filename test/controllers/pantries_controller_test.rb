require 'test_helper'

class PantriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pantry = pantries(:one)
  end

  test "should get index" do
    get pantries_url, as: :json
    assert_response :success
  end

  test "should create pantry" do
    assert_difference('Pantry.count') do
      post pantries_url, params: { pantry: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show pantry" do
    get pantry_url(@pantry), as: :json
    assert_response :success
  end

  test "should update pantry" do
    patch pantry_url(@pantry), params: { pantry: {  } }, as: :json
    assert_response 200
  end

  test "should destroy pantry" do
    assert_difference('Pantry.count', -1) do
      delete pantry_url(@pantry), as: :json
    end

    assert_response 204
  end
end
