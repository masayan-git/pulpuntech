require 'test_helper'

class Masters::ArticlesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @masters_article = masters_articles(:one)
  end

  test "should get index" do
    get masters_articles_url
    assert_response :success
  end

  test "should get new" do
    get new_masters_article_url
    assert_response :success
  end

  test "should create masters_article" do
    assert_difference('Masters::Article.count') do
      post masters_articles_url, params: { masters_article: {  } }
    end

    assert_redirected_to masters_article_url(Masters::Article.last)
  end

  test "should show masters_article" do
    get masters_article_url(@masters_article)
    assert_response :success
  end

  test "should get edit" do
    get edit_masters_article_url(@masters_article)
    assert_response :success
  end

  test "should update masters_article" do
    patch masters_article_url(@masters_article), params: { masters_article: {  } }
    assert_redirected_to masters_article_url(@masters_article)
  end

  test "should destroy masters_article" do
    assert_difference('Masters::Article.count', -1) do
      delete masters_article_url(@masters_article)
    end

    assert_redirected_to masters_articles_url
  end
end
