class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

    rescue_from CanCan::AccessDenied do |exception| #con estas lineas alguien que sepa la url no podra entrar y sera redireccionado
    redirect_to root_url, :alert => exception.message
  end
end

