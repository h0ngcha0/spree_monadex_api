Spree::Api::base_controller.class_eval do
  before_filter :check_api_version

  private

  def check_api_version
    if ! params[:version]
      render "spree/api/errors/moved_permanently", :status => 301 and return
    end
  end
end
