class ApplicationController < ActionController::Base

  rescue_from  CanCan::AccessDenied do |exception|
    respond_to do |format|
      format.html {redirect_to root_url, alert: 'Debes iniciar sesión para poder acceder'}
    end
  end
end
