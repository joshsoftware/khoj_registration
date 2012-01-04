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

  def unauthorized_user
    flash[:notice] = I18n.t('access.restrict')
    redirect_to '/' and return
  end

end
