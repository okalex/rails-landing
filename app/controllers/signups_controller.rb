class SignupsController < InheritedResources::Base

  actions :create, :index, :new

  def create
    create! do |success, failure|
      success.html { redirect_to thanks_url }
      failure.html { redirect_to signup_url }
    end
  end

  protected

  def permitted_params
    params.permit(signup: [:email])
  end

end
