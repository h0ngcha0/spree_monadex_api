Spree::Api::BaseController.class_eval do
  before_filter :check_api_version

  private

  def check_api_version
    if ! supported_versions.include?(@api_version)
      render "spree/api/errors/moved_permanently", :status => 301 and return
    end
  end

  def supported_versions
    [1]
  end
  
end
