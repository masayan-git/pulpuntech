require "application_system_test_case"

class Masters::ArticlesTest < ApplicationSystemTestCase
  setup do
    @masters_article = masters_articles(:one)
  end

  test "visiting the index" do
    visit masters_articles_url
    assert_selector "h1", text: "Masters/Articles"
  end

  test "creating a Article" do
    visit masters_articles_url
    click_on "New Masters/Article"

    click_on "Create Article"

    assert_text "Article was successfully created"
    click_on "Back"
  end

  test "updating a Article" do
    visit masters_articles_url
    click_on "Edit", match: :first

    click_on "Update Article"

    assert_text "Article was successfully updated"
    click_on "Back"
  end

  test "destroying a Article" do
    visit masters_articles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Article was successfully destroyed"
  end
end
