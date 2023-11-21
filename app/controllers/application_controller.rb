class ApplicationController < ActionController::Base
  def index
    render plain: "Home"
  end

  def find_current_auditor
    current_user
  end
end
