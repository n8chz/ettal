require 'test_helper'

class GendescsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gendesc = gendescs(:one)
  end

  test "should get index" do
    get gendescs_url
    assert_response :success
  end

  test "should get new" do
    get new_gendesc_url
    assert_response :success
  end

  test "should create gendesc" do
    assert_difference('Gendesc.count') do
      post gendescs_url, params: { gendesc: { gendesc: @gendesc.gendesc } }
    end

    assert_redirected_to gendesc_url(Gendesc.last)
  end

  test "should show gendesc" do
    get gendesc_url(@gendesc)
    assert_response :success
  end

  test "should get edit" do
    get edit_gendesc_url(@gendesc)
    assert_response :success
  end

  test "should update gendesc" do
    patch gendesc_url(@gendesc), params: { gendesc: { gendesc: @gendesc.gendesc } }
    assert_redirected_to gendesc_url(@gendesc)
  end

  test "should destroy gendesc" do
    assert_difference('Gendesc.count', -1) do
      delete gendesc_url(@gendesc)
    end

    assert_redirected_to gendescs_url
  end
end
