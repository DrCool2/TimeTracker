require 'test_helper'

class LovsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lov = lovs(:one)
  end

  test "should get index" do
    get lovs_url
    assert_response :success
  end

  test "should get new" do
    get new_lov_url
    assert_response :success
  end

  test "should create lov" do
    assert_difference('Lov.count') do
      post lovs_url, params: { lov: { column: @lov.column, table: @lov.table } }
    end

    assert_redirected_to lov_url(Lov.last)
  end

  test "should show lov" do
    get lov_url(@lov)
    assert_response :success
  end

  test "should get edit" do
    get edit_lov_url(@lov)
    assert_response :success
  end

  test "should update lov" do
    patch lov_url(@lov), params: { lov: { column: @lov.column, table: @lov.table } }
    assert_redirected_to lov_url(@lov)
  end

  test "should destroy lov" do
    assert_difference('Lov.count', -1) do
      delete lov_url(@lov)
    end

    assert_redirected_to lovs_url
  end
end
