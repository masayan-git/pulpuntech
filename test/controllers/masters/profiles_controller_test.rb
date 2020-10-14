require 'test_helper'

class Masters::ProfilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @masters_profile = masters_profiles(:one)
  end

  test "should get index" do
    get masters_profiles_url
    assert_response :success
  end

  test "should get new" do
    get new_masters_profile_url
    assert_response :success
  end

  test "should create masters_profile" do
    assert_difference('Masters::Profile.count') do
      post masters_profiles_url, params: { masters_profile: {  } }
    end

    assert_redirected_to masters_profile_url(Masters::Profile.last)
  end

  test "should show masters_profile" do
    get masters_profile_url(@masters_profile)
    assert_response :success
  end

  test "should get edit" do
    get edit_masters_profile_url(@masters_profile)
    assert_response :success
  end

  test "should update masters_profile" do
    patch masters_profile_url(@masters_profile), params: { masters_profile: {  } }
    assert_redirected_to masters_profile_url(@masters_profile)
  end

  test "should destroy masters_profile" do
    assert_difference('Masters::Profile.count', -1) do
      delete masters_profile_url(@masters_profile)
    end

    assert_redirected_to masters_profiles_url
  end
end
