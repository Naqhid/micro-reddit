require "test_helper"

class AddCategoryToPostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @add_category_to_post = add_category_to_posts(:one)
  end

  test "should get index" do
    get add_category_to_posts_url
    assert_response :success
  end

  test "should get new" do
    get new_add_category_to_post_url
    assert_response :success
  end

  test "should create add_category_to_post" do
    assert_difference('AddCategoryToPost.count') do
      post add_category_to_posts_url, params: { add_category_to_post: { body: @add_category_to_post.body, title: @add_category_to_post.title } }
    end

    assert_redirected_to add_category_to_post_url(AddCategoryToPost.last)
  end

  test "should show add_category_to_post" do
    get add_category_to_post_url(@add_category_to_post)
    assert_response :success
  end

  test "should get edit" do
    get edit_add_category_to_post_url(@add_category_to_post)
    assert_response :success
  end

  test "should update add_category_to_post" do
    patch add_category_to_post_url(@add_category_to_post), params: { add_category_to_post: { body: @add_category_to_post.body, title: @add_category_to_post.title } }
    assert_redirected_to add_category_to_post_url(@add_category_to_post)
  end

  test "should destroy add_category_to_post" do
    assert_difference('AddCategoryToPost.count', -1) do
      delete add_category_to_post_url(@add_category_to_post)
    end

    assert_redirected_to add_category_to_posts_url
  end
end
