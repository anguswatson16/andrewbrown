class RegistrationsController < Devise::RegistrationsController
  before_action :one_user_registered?, only: [:new, :create]

  def new
    super
  end

  def create
    super
  end

  def update
    super
  end

  protected

  def one_user_registered?
    if User.count == 1
      if user_signed_in?
        redirect_to root_path
      else
        redirect_to new_user_session_path
      end
    end
  end
end
