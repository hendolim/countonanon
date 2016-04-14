class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_filter :toggle_appear_offline

  after_filter :user_activity
  
  def toggle_appear_offline
    puts "in toggle_appear_offline"
    if params[:toggle_offline] && @current_user
      puts "in the if"
      puts @current_user.appear_offline
      @current_user.appear_offline = !@current_user.appear_offline
      puts "set appear_offline"
      puts @current_user.appear_offline
    end
  end

  private

  def user_activity  
    if @current_user
  	 @current_user.try(:touch)
    end
  end

  protected
  
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :username
    devise_parameter_sanitizer.for(:account_update) << :username
  end
end
