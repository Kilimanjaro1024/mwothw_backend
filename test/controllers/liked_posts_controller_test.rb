require "test_helper"

class LikedPostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @liked_post = liked_posts(:one)
  end

  test "should get index" do
    get liked_posts_url, as: :json
    assert_response :success
  end

  test "should create liked_post" do
    assert_difference('LikedPost.count') do
      post liked_posts_url, params: { liked_post: { content: @liked_post.content, likes: @liked_post.likes, title: @liked_post.title, topic: @liked_post.topic, user_id: @liked_post.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show liked_post" do
    get liked_post_url(@liked_post), as: :json
    assert_response :success
  end

  test "should update liked_post" do
    patch liked_post_url(@liked_post), params: { liked_post: { content: @liked_post.content, likes: @liked_post.likes, title: @liked_post.title, topic: @liked_post.topic, user_id: @liked_post.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy liked_post" do
    assert_difference('LikedPost.count', -1) do
      delete liked_post_url(@liked_post), as: :json
    end

    assert_response 204
  end
end
