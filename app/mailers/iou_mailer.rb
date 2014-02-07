class IouMailer < ActionMailer::Base
  default from: "mbetts7@gmail.com"

  def new_iou_email(user)
    @user = user
    @url = 'murmuring-ridge-5505.herokuapp.com'
    mail(to: @user.email, subject: 'You owe me')
  end

end
