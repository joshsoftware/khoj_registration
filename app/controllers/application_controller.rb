class ApplicationController < ActionController::Base
  protect_from_forgery
  def after_sign_in_path_for(scope)
    if scope.is_a?(User)
      '#'
    elsif scope.is_a?(Admin)
      '#'
    else
      super
    end
  end

end
