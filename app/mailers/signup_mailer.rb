class SignupMailer < ActionMailer::Base
  default from: "alex@appname.io"

  def welcome_email(signup)
    @signup = signup
    mail(to: @signup.email, subject: 'AppName.io loves you!')
  end

end
