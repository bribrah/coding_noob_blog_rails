class PostsController < ApplicationController
    def index
      @posts = Post.all
    end
    def new
      @post = Post.new
    end
    def create
      @post = Post.new(post_params)
      if @post.save
        redirect_to @post
      else
        render new
      end
    end

    def show
      @post = Post.find(params[:id])
    end

    def edit
      @post = Post.find(params[:id])
    end

 
  
    def destroy
      @post = Post.find(params[:id])
      if @post.destroy
        flash[:success] = 'Post was successfully deleted.'
        redirect_to posts_url
      else
        flash[:error] = 'Something went wrong'
        redirect_to posts_url
      end
    end
    
    
    
    





    private
    def post_params
      params.require(:post).permit(:title,:text)
    end

    
end
