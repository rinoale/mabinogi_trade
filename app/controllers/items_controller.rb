class ItemsController < ApplicationController
  before_filter :require_login

  def new
    @item = current_user.items.new
  end

  def show
    @items = current_user.items
  end

  def create
    @item = current_user.items.new(item_params)

    if @item.save
      redirect_to '/items'
    else
      render 'new'
    end
  end

  private

  def item_params
    params.require(:item).permit(:name, :image, :race, :cloth, :gender, :metalware_info, :inchant_info, :description)
  end

  def require_login
    redirect_to :root if current_user.nil?
  end
end
