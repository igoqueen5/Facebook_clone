class CommentsController < ApplicationController
  def create
    @comment = current_user.comments.build(comment_params)
    @topic = @comment.topic

    respond_to do |format|
      if @comment.save
        format.html { redirect_to topic_path(@topic), notice: 'コメントを投稿しました。' }
        format.js { render :index }
      else
        format.html { render :new }
      end
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    respond_to do |format|
    @comment.destroy
      format.html{redirect_to topic_path(@topic), notice: 'コメントを削除しました。'}
      format.js{render :index}
    end
  end
end

  def edit
　end



  def update
   respond_to do |format|
    @comment.update(comment_params)
    format.html { redirect_to topic_path(@topic), notice: 'コメントを更新しました。' }
    format.js{ render :index }
  end
end

  private
    # ストロングパラメーター
    def comment_params
      params.require(:comment).permit(:topic_id, :content)
    end
  end
