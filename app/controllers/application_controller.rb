class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_devise_parameters, if: :devise_controller?

  def configure_devise_parameters

devise_parameter_sanitizer.permit (:sign_up) { |u| u.permit( :nom, :prenom, :date_naissance, :niveau_etude, :nom_filiere, :email, :password, :password_confirmation ) }

devise_parameter_sanitizer.permit (:account_update) { |u| u.permit( :nom, :prenom, :date_naissance, :niveau_etude, :nom_filiere, :maitre_id, :email, :password, :password_confirmation, :current_password ) }

  end

end
