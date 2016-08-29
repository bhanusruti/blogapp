class PostsController < ApplicationController

  
  def index
    @posts=Post.all
  end

  def new

  end

  def create
    title: params[:title]
    text: params[:text]
    post = Post.new(title: title, text: text, user_id: current_user.id)
    if post.save
      redirect_to '/posts/#{post.id}'
    else
      redirect_to '/posts/new'
    end

  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    post = Post.find(params[:id])
    post.assign_attributes(title: params[:title], text: params[:text], user_id: params[:user_id])
    if post.save
      redirect_to '/posts/#{params[:id]}'
    else
      redirect_to '/posts/#{params[:id]}/edit'
    end
  end

  def destroy
    post = Post.find(params[:id]))
    post.destroy
    redirect_to '/posts'
  end
end
