class SecretsController < ApplicationController
  before_action :require_login

  def show
    # if current_user == nil
    #   redirect_to '/login'
    # end
  end

private

  def require_login
      redirect_to '/login' unless session.include? :name
  end

end
