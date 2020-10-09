class SearchArticlesService
  def self.search(search)
    if search != ""
      Article.where('title Like(?)', "%#{search}%")
      # あとでcontetnに直す
    else
      redirect_to articles_path
    end
  end
end