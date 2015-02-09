class CommentsController < ApplicationController
  before_filter :authenticate_admin!, except: [:create, :last]
  load_resource

  def index
    @comments = Comment.order(:id)
  end

  def last
    @comments = Comment.accepts.order(:id)
  end

  def create
    @comment = Comment.create(resource_params)
    if @comment.save!
      redirect_to root_path,
                  notice: 'Спасибо за Ваш отзыв!'
    else
      redirect_to root_path,
                  notice: 'К сожалению, произошла ошибка, попробуйте написать отзыв ещё раз.'
    end
  end

  def update
    @comment.update(resource_params)
    @comment.save!
    redirect_to comments_path
  end

  def destroy
    @comment.destroy
    redirect_to comments_path
  end

  def resource_params
    params.require(:comment).permit(:name, :text, :raty, :status)
  end
end