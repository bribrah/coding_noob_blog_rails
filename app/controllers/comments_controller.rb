class CommentsController < ApplicationController
  http_basic_authenticate_with name: "bribrah", password: "people46", only: [:destroy]
    
    def create
        @comment = Comment.new(comment_params)
        @comment.post_id = params[:post_id]
        if @comment.save
            flash[:success] = "Comment created successfully"
            redirect_to post_path(@comment.post)
        else
            flash.now[:warning] = "comment not created successfully"
            params[:id] = @comment.post_id
            render "posts/show"
        end
    end

    def destroy
        @comment = Comment.find(params[:id])
        post_id = params[:post_id]
        if @comment.destroy
            flash[:success] = 'Comment was successfully deleted.'
            redirect_to post_path(post_id)
        else
            flash[:error] = 'Something went wrong'
            redirect_to comments_url
        end
    end
    

    private
    def comment_params
        params.require(:comment).permit(:author_name, :body)
    end
end
