class ItemsController < ApplicationController
  before_filter :require_login

  def show
    @items = current_user.items
  end

  private

  def require_login
    redirect_to :root if current_user.nil?
  end
end
