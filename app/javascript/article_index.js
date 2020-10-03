let showContents = function() {
  const categoryLinks = document.querySelectorAll(".main-category-link");
  const articleContents = document.querySelectorAll(".index-article-contents");
  
  categoryLinks.forEach(function(category){
    category.addEventListener("click", (e)=>{
      articleContents.forEach(function(content){
        if (category.dataset.num === content.dataset.num){
          content.setAttribute("style", "display: flex;");
        }else{
          content.setAttribute("style", "display: none;");
        }
      });
    });
  });
}
window.addEventListener("turbolinks:load", showContents);