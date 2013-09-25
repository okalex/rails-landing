class SignupMailer < ActionMailer::Base
  default from: "alex@appname.io"

  def welcome_email(signup)
    @signup = signup
    mail(to: @signup.email, subject: 'Welcome to My Awesome Site')
  end

end
