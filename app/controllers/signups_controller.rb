class SignupsController < InheritedResources::Base

  actions :create, :new

  def create
    create! do |success, failure|
      success.html do
        SignupMailer.welcome_email(@signup).deliver
        redirect_to thanks_url
      end

      failure.html do
        redirect_to signup_url
      end
    end
  end

  protected

  def permitted_params
    params.permit(signup: [:email])
  end

end
