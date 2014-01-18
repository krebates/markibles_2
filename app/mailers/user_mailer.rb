class UserMailer < ActionMailer::Base
  default from: "from@example.com"

  def contact_seller_email(user)
    @user = user
    @greeting = "Hi"

    mail to: "krebates@gmail.com",
    from: @user.email,
    subject: @user.subject
  end
end
