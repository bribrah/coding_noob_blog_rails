class PostsController < ApplicationController

  http_basic_authenticate_with name: "bribrah", password: "people46", except: [:index, :show]

      TESTASIDHEBASL:KDJH
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

    def update
      @post = Post.find(params[:id])
        if @post.update_attributes(post_params)
          flash[:success] = "Post was successfully updated"
          redirect_to @post
        else
          flash[:error] = "Something went wrong"
          render 'edit'
        end
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
