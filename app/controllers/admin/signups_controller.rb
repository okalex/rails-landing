class Admin::SignupsController < Admin::AdminController

  actions :index

  protected

  def collection
    @signups ||= end_of_association_chain.paginate(:page => params[:page])
  end

end
