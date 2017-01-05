require 'test_helper'

class PostDetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @post_detail = post_details(:one)
  end

  test "should get index" do
    get post_details_url
    assert_response :success
  end

  test "should get new" do
    get new_post_detail_url
    assert_response :success
  end

  test "should create post_detail" do
    assert_difference('PostDetail.count') do
      post post_details_url, params: { post_detail: { PostID: @post_detail.PostID, PostText: @post_detail.PostText } }
    end

    assert_redirected_to post_detail_url(PostDetail.last)
  end

  test "should show post_detail" do
    get post_detail_url(@post_detail)
    assert_response :success
  end

  test "should get edit" do
    get edit_post_detail_url(@post_detail)
    assert_response :success
  end

  test "should update post_detail" do
    patch post_detail_url(@post_detail), params: { post_detail: { PostID: @post_detail.PostID, PostText: @post_detail.PostText } }
    assert_redirected_to post_detail_url(@post_detail)
  end

  test "should destroy post_detail" do
    assert_difference('PostDetail.count', -1) do
      delete post_detail_url(@post_detail)
    end

    assert_redirected_to post_details_url
  end
end
