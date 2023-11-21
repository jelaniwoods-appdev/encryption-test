class ApplicationController < ActionController::Base
  def index
    render plain: "Home\nThere's no links or html here. Navigate to sign in yourself 😈"
  end

  def find_current_auditor
    current_user
  end
end
