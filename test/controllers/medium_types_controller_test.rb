require 'test_helper'

class MediumTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @medium_type = medium_types(:one)
  end

  test "should get index" do
    get medium_types_url, as: :json
    assert_response :success
  end

  test "should create medium_type" do
    assert_difference('MediumType.count') do
      post medium_types_url, params: { medium_type: { details: @medium_type.details, is_active: @medium_type.is_active, name: @medium_type.name } }, as: :json
    end

    assert_response 201
  end

  test "should show medium_type" do
    get medium_type_url(@medium_type), as: :json
    assert_response :success
  end

  test "should update medium_type" do
    patch medium_type_url(@medium_type), params: { medium_type: { details: @medium_type.details, is_active: @medium_type.is_active, name: @medium_type.name } }, as: :json
    assert_response 200
  end

  test "should destroy medium_type" do
    assert_difference('MediumType.count', -1) do
      delete medium_type_url(@medium_type), as: :json
    end

    assert_response 204
  end
end
