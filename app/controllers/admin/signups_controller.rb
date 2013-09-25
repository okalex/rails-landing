class Admin::SignupsController < Admin::AdminController

  defaults :resource_class => Signup, :collection_name => 'signups', :instance_name => 'signup'
  actions :index, :destroy

  protected

  def collection
    @signups ||= end_of_association_chain.paginate(:page => params[:page])
  end

end
