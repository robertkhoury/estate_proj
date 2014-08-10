class MicropostsController < ApplicationController
  before_action :signed_in_user

  def create
    @micropost = Micropost.new(micropost_params)
    if @micropost.save
      flash[:success] = "Message sent!"
      redirect_to :back
    else
      render 'static_pages/home'
    end
  end

  def show
    @micropost = Micropost.find(params[:id])
    if @micropost.unread?
      @micropost.mark_read
      @micropost.save
    end
    @reply = Micropost.new
  end

  def index
    @microposts = Micropost.paginate(page: params[:page])
  end

  def inbox
    @microposts = current_user.microposts.paginate(page: params[:page])
  end 

  def destroy
  end


  private

    def micropost_params
      params.require(:micropost).permit(:content, :user_id, :sender_id, :unread)
    end
end