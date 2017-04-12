class PostsController < ApplicationController
 def index
	@posts = Post.where(["title LIKE ?","%#{params[:search]}%"]).order(id: :desc)
 end
 
 def show
	@post = Post.find(params[:id])
 end
 
 def new
	@post = Post.new
 end
 
 def create
	@post = Post.create(post_params)
	if @post.save
		redirect_to posts_path, :notice => "Your post was saved"
	else
		render "new"
	end
 end
 
 def edit
	@post = Post.find(params[:id])
 end
 
 def update
	@post = Post.find(params[:id])
	
	if@post.update_attributes(post_params)
		redirect_to posts_path, :notice => "Your post has been updated"
	else
	render "edit"
	end
 end
 
 def destroy
	@post = Post.find(params[:id])
	@post.destroy
	redirect_to posts_path, :notice => "Your post has been deleted"
 end
 def post_params
	params.require(:post).permit(:title, :content, :image, :remote_image_url)
 end
 
end
