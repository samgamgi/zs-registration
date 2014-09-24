class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :protect

def protect
  @ips = ['98.101.39.134', '203.123.10.1'] #And so on ...]
  if not @ips.include? request.remote_ip
     if user = authenticate_with_http_basic { |u, p| u=='sbx' and p=='sbx' }
          @current_user = user
     else
          request_http_basic_authentication
     end
  end
end

end
