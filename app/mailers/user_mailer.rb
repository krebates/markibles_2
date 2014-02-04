class UserMailer < ActionMailer::Base
  default from: "from@example.com"

  def contact_seller_email(message)
    @user = message.user
    @greeting = "Hi"
    @product_owner = message.product.user
    @text = message.text

    mail to: @product_owner.email,
    from: @user.email,
    subject: message.subject,
    text: message.text
  end
end
