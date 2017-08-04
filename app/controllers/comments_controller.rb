class CommentsController < ApplicationController
  before_action :set_comment, only: [:edit, :update, :destroy]



  def create
   @comment = current_user.comments.build(comment_params)
   @topic = @comment.topic
     respond_to do |format|
   @comment.save
    format.js{ render :index }
   end
 end



  def edit
   respond_to do |format|
    format.js { render :edit }
  end
end



  def update
   respond_to do |format|
    @comment.update(comment_params)
   format.js{ render :index }
  end
end



  def destroy
   respond_to do |format|
    @comment.destroy
     format.js{ render :index }
   end
 end



  private
   def comment_params
    params.require(:comment).permit(:topic_id, :content)
   end

   def set_comment
    @comment = Comment.find(params[:id])
   end
end
