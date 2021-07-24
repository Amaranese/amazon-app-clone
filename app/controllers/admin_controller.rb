class AdminController < ApplicationController
  before_action :require_login
  protected
  def not_authenticated
    Rails.logger.debug(current_user)
    redirect_to welcome_path
  end
end
