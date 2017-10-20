require 'test_helper'

class MatchupsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @matchup = matchups(:one)
  end

  test "should get index" do
    get matchups_url
    assert_response :success
  end

  test "should get new" do
    get new_matchup_url
    assert_response :success
  end

  test "should create matchup" do
    assert_difference('Matchup.count') do
      post matchups_url, params: { matchup: {  } }
    end

    assert_redirected_to matchup_url(Matchup.last)
  end

  test "should show matchup" do
    get matchup_url(@matchup)
    assert_response :success
  end

  test "should get edit" do
    get edit_matchup_url(@matchup)
    assert_response :success
  end

  test "should update matchup" do
    patch matchup_url(@matchup), params: { matchup: {  } }
    assert_redirected_to matchup_url(@matchup)
  end

  test "should destroy matchup" do
    assert_difference('Matchup.count', -1) do
      delete matchup_url(@matchup)
    end

    assert_redirected_to matchups_url
  end
end
