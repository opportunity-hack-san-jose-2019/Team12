class ApplicationController < ActionController::Base
  def after_sign_in_path_for(resource_or_scope)
    root_url if resource_or_scope.is_a? Admin
  end
end
