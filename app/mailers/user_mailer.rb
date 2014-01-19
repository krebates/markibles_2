class UserMailer < ActionMailer::Base
  default from: "from@example.com"

  def contact_seller_email(message_content)
    @user = message_content.user
    @greeting = "Hi"
    @product_owner = message_content.user
    @text = message_content.text

    mail to: @product_owner.email,
    from: @user.email,
    subject: message_content.subject,
    text: message_content.text
  end
end
