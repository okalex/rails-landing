class Admin::AdminController < InheritedResources::Base

  before_filter :verify_is_admin

  protected

  def verify_is_admin
    redirect_to(root_path) if current_user.nil? || !current_user.admin?
  end

end
