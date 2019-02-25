class CommentsController < ApplicationController
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

    private
    def comment_params
        params.require(:comment).permit(:author_name, :body)
    end
end
