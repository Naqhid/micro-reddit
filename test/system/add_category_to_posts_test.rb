require "application_system_test_case"

class AddCategoryToPostsTest < ApplicationSystemTestCase
  setup do
    @add_category_to_post = add_category_to_posts(:one)
  end

  test "visiting the index" do
    visit add_category_to_posts_url
    assert_selector "h1", text: "Add Category To Posts"
  end

  test "creating a Add category to post" do
    visit add_category_to_posts_url
    click_on "New Add Category To Post"

    fill_in "Body", with: @add_category_to_post.body
    fill_in "Title", with: @add_category_to_post.title
    click_on "Create Add category to post"

    assert_text "Add category to post was successfully created"
    click_on "Back"
  end

  test "updating a Add category to post" do
    visit add_category_to_posts_url
    click_on "Edit", match: :first

    fill_in "Body", with: @add_category_to_post.body
    fill_in "Title", with: @add_category_to_post.title
    click_on "Update Add category to post"

    assert_text "Add category to post was successfully updated"
    click_on "Back"
  end

  test "destroying a Add category to post" do
    visit add_category_to_posts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Add category to post was successfully destroyed"
  end
end
