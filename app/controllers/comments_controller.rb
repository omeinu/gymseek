class CommentsController < ApplicationController
  before_action :authenticate_user!

  def create
    @gym = Gym.find(params[:gym_id])
    @comment = @gym.comments.new(comment_params)
    @comment.user_id = current_user.id
    if @comment.save
      redirect_to @gym, notice: "ジム[#{@gym.name}]にコメントを投稿しました。"
    else
      redirect_to @gym, notice: "入力に誤りがあります"
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end
end
