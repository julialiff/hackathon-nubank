module SessionsHelper

  # Logs in the given user.
  def log_in(user)
    session[:user_id] = user.id
  end

  def log_inc(consultant)
    session[:consultant_id] = consultant.id
  end

  # Returns the current logged-in user (if any).
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end
  def current_consultant
    @current_consultant ||= Consultant.find_by(id: session[:consultant_id])
  end

  # Returns true if the user is logged in, false otherwise.
  def logged_in?
    # ap 'session'
    # ap session
    # ap 'current_user:'
    # ap current_user
    # ap 'current_consultant'
    # ap current_consultant
    !current_user.nil? || !current_consultant.nil?
  end

  def log_out
    session.delete(:user_id)
    session.delete(:consultant_id)
    @current_user = nil
    @current_consultant = nil
  end
end
