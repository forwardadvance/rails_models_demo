class CatsController < ApplicationController

  before_filter :set_name, only: [:index]

  # before_filter :authorize!, only: [:edit, :update, :delete]

  def index

    # render layout: 'blank'
    # debugger
  end

  def show
    @cat_name = params[:cat_name]
    @cat = Cat.find(params[:id])
  end

  private

  def set_name
    @name ="Grumpy Gareth!!!"
  end
end
