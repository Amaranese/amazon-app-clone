require 'test_helper'

class TagProductMapsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tag_product_map = tag_product_maps(:one)
  end

  test "should get index" do
    get tag_product_maps_url
    assert_response :success
  end

  test "should get new" do
    get new_tag_product_map_url
    assert_response :success
  end

  test "should create tag_product_map" do
    assert_difference('TagProductMap.count') do
      post tag_product_maps_url, params: { tag_product_map: { product_id: @tag_product_map.product_id, tag_id: @tag_product_map.tag_id } }
    end

    assert_redirected_to tag_product_map_url(TagProductMap.last)
  end

  test "should show tag_product_map" do
    get tag_product_map_url(@tag_product_map)
    assert_response :success
  end

  test "should get edit" do
    get edit_tag_product_map_url(@tag_product_map)
    assert_response :success
  end

  test "should update tag_product_map" do
    patch tag_product_map_url(@tag_product_map), params: { tag_product_map: { product_id: @tag_product_map.product_id, tag_id: @tag_product_map.tag_id } }
    assert_redirected_to tag_product_map_url(@tag_product_map)
  end

  test "should destroy tag_product_map" do
    assert_difference('TagProductMap.count', -1) do
      delete tag_product_map_url(@tag_product_map)
    end

    assert_redirected_to tag_product_maps_url
  end
end
