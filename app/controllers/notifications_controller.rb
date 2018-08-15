class NotificationsController < ApplicationController
  def new
    @notification = Notification.new
  end

  def create
    @notification = Notification.create(not_params)

    if @notification.save
      redirect_to root_path
    else
      render :new
    end
  end

  def toggle_check
    @notification = Notification.find(params[:notification_id])
    if @notification.check == false
      @check = @notification.update(check: true)
    else
      @check = @notification.update(check: false)
    end
    redirect_to @notification
  end

  def index
    @notifications = Notification.all
  end

  def show

    @notification = Notification.find(params[:id])
  end

  def edit
  end


  private

  def not_params
    params.require(:notification).permit(:title, :check)
  end
end
