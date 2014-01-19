class MessagesController < ApplicationController

 def new
    @message = Message.new
    @product = Product.find(params[:product_id])
  end

  def create
    @message = Message.new(message_params)
    @message.user = current_user

    if @message.save
      UserMailer.contact_seller_email(@message).deliver
      redirect_to root_path, notice: 'Your email is sent! Thank You!'
    else
      render :new
    end
  end

  def message_params
    params.require(:message).permit(:first_name, :last_name, :email, :subject, :text)
  end
end
