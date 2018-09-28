require 'test_helper'

class MonsterTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @monster_type = monster_types(:one)
  end

  test "should get index" do
    get monster_types_url
    assert_response :success
  end

  test "should get new" do
    get new_monster_type_url
    assert_response :success
  end

  test "should create monster_type" do
    assert_difference('MonsterType.count') do
      post monster_types_url, params: { monster_type: { description: @monster_type.description, name: @monster_type.name } }
    end

    assert_redirected_to monster_type_url(MonsterType.last)
  end

  test "should show monster_type" do
    get monster_type_url(@monster_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_monster_type_url(@monster_type)
    assert_response :success
  end

  test "should update monster_type" do
    patch monster_type_url(@monster_type), params: { monster_type: { description: @monster_type.description, name: @monster_type.name } }
    assert_redirected_to monster_type_url(@monster_type)
  end

  test "should destroy monster_type" do
    assert_difference('MonsterType.count', -1) do
      delete monster_type_url(@monster_type)
    end

    assert_redirected_to monster_types_url
  end
end
