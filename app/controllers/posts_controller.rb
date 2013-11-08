class PostsController < ApplicationController
 def new
  end

 def create
  @post = Post.new(post_params)
  @post.save
  redirect_to :action => :show, :id => @post
end

def show
  @post = Post.find(params[:id])
end

def index
  @posts = Post.all
end

def edit
  @post = Post.find(params[:id])
end

 def destroy
   @post = Post.find(params[:id])
   @post.destroy

   redirect_to :action => :index
 end

 def update
   @post = Post.find(params[:id])
   @post.update_attributes(post_params)
  redirect_to :action => :show, :id => @post
 end
private
  def post_params
    params.require(:post).permit(:title, :text)
  end
end