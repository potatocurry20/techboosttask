class CommentController < ApplicationController
  
  #topic_indexからtopicのidを受け取り、createで使いたい
  def new
   @comment = Comment.new
   @topic_id = params[:topic_id]
  end
  
  #comment/newの内容を受け取りたい
  def create
    comment = current_user.comments.build(topic_id: params[:comment][:topic_id], comment: params[:comment][:comment])
    
    if comment.save
      redirect_to topics_path, success:'コメントを投稿しました'
    else
      redirect_to topics_path, danger:'コメントの投稿に失敗しました'
    end
    
  end
  
  private 
  #def comment_params
    #params.require(:comment).permit(:topic_id, :comment)
  #end
  
end
