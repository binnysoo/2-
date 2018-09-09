class MainController < ApplicationController
  def index
    @post = Post.all
  end

  def new
  end

  def create
    post = Post.new
    post.title = params[:title]
    post.content = params[:content]
    post.email = current_user.email
    post.username = current_user.username
    post.save

    redirect_to '/'
  end

  def show
    @post = Post.find(params[:post_id])
  end

  def destroy
    post = Post.find(params[:post_id])
    post.destroy

    redirect_to '/'
  end

  def edit
    @post = Post.find(params[:post_id])
  end

  def update
    post = Post.find(params[:post_id])
    post.title = params[:title]
    post.content = params[:content]
    post.save

    redirect_to '/'
  end

  def comment_create
    @comment = Comment.new
    @comment.content = params[:content]
    @comment.post_id = params[:post_id]
    @comment.email = current_user.email
    @comment.username = current_user.username
    @comment.img_url = params[:image]
    @comment.save

    redirect_to '/'
  end

  def comment_destroy
    comment = Post.find(params[:post_id]).comments.find(params[:comment_id])
    comment.destroy

    redirect_to '/'
  end
end
