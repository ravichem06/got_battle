require 'test_helper'

class BattlesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @battle = battles(:one)
  end

  test "should get index" do
    get battles_url
    assert_response :success
  end

  test "should get new" do
    get new_battle_url
    assert_response :success
  end

  test "should create battle" do
    assert_difference('Battle.count') do
      post battles_url, params: { battle: { attacker_1: @battle.attacker_1, attacker_commander: @battle.attacker_commander, attacker_king: @battle.attacker_king, attacker_size: @battle.attacker_size, battle_number: @battle.battle_number, battle_outcome: @battle.battle_outcome, battle_type: @battle.battle_type, defender_1: @battle.defender_1, defender_commander: @battle.defender_commander, defender_king: @battle.defender_king, defender_size: @battle.defender_size, location: @battle.location, major_capture: @battle.major_capture, major_deaths: @battle.major_deaths, name: @battle.name, note: @battle.note, region: @battle.region, summer: @battle.summer, year: @battle.year } }
    end

    assert_redirected_to battle_url(Battle.last)
  end

  test "should show battle" do
    get battle_url(@battle)
    assert_response :success
  end

  test "should get edit" do
    get edit_battle_url(@battle)
    assert_response :success
  end

  test "should update battle" do
    patch battle_url(@battle), params: { battle: { attacker_1: @battle.attacker_1, attacker_commander: @battle.attacker_commander, attacker_king: @battle.attacker_king, attacker_size: @battle.attacker_size, battle_number: @battle.battle_number, battle_outcome: @battle.battle_outcome, battle_type: @battle.battle_type, defender_1: @battle.defender_1, defender_commander: @battle.defender_commander, defender_king: @battle.defender_king, defender_size: @battle.defender_size, location: @battle.location, major_capture: @battle.major_capture, major_deaths: @battle.major_deaths, name: @battle.name, note: @battle.note, region: @battle.region, summer: @battle.summer, year: @battle.year } }
    assert_redirected_to battle_url(@battle)
  end

  test "should destroy battle" do
    assert_difference('Battle.count', -1) do
      delete battle_url(@battle)
    end

    assert_redirected_to battles_url
  end
end
