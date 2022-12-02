class AppoinmentsController < ApplicationController

  def show
  end
    def create
      @article = User.find(params[:article_id])
      @comment = @user.comments.create(appoinment_params)
      redirect_to appoinment_path(@article)
    end

    private
    def comment_params
      params.require(:appoinment).permit(:appoinment, :body)
    end
  end

