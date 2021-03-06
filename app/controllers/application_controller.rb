class ApplicationController < ActionController::Base
  layout 'admin_lte_2'

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  protected
  def configure_permitted_parameters
   devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:email, :firstName, :lastName, :phone, :rut, :apartment, :webSite, :contactPhone, :contactEmail, :profile_id, :communitypass, :password, :password_confirmation, :community_id, :avatar)}
   devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:email, :firstName, :lastName, :phone, :rut, :apartment, :webSite, :contactPhone, :contactEmail, :profile_id, :communitypass, :password, :password_confirmation, :community_id, :avatar) }
  end

 end