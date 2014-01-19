class UserMailer < ActionMailer::Base
  default from: "from@example.com"

  def contact_seller_email(message_content)
    @user = message_content.user
    @greeting = "Hi"
    @product_owner = message_content.user

    mail to: @product_owner.email,
    from: @user.email,
    subject: @subject,
    text: @text
  end
end
