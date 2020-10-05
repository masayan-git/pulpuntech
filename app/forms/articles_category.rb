class ArticlesCategory
  include ActiveModel::Model
  attr_accessor :title, :category_ids, :content, :master_id

  def save
    article = Article.create!(title: title, content: content, master_id: master_id)
    # binding.pry
    category_ids.each do |c|
      ArticleCategory.create!(article_id: article.id, categories_id: c)
    end
  end
end