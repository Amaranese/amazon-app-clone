class TopController < AdminController
  def index
    Rails.logger.debug(current_user)
  end
end
