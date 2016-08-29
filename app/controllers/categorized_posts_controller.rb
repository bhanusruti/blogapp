class CategorizedPostsController < ApplicationController
  def new
  end

  def create
    categorized_post = CategorizedPost.new(post_id: params[:post_id], category_id: params[:category_id])
    if categorized_post.save
      redirect_to '/post/#{params[:post_id]}'
    else
      redirect_to '/categorized_posts/#{params[:post_id]}/new'
    end
  end
end
