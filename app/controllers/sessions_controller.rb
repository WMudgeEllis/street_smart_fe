class SessionsController < ApplicationController

  skip_before_action :verify_authenticity_token, only: :create

  def create
    user = User.find_or_create_by(email: auth_hash['info']['email'], uid: auth_hash['uid'])
    session[:user_id] = user.id
    redirect_to '/dashboard'
  end

  protected

  def auth_hash
    request.env['omniauth.auth']
  end

end
