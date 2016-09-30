class PagesController < ApplicationController
  def home
      if params[:search]
        @rooms = Room.search(params[:search]).order("created_at DESC")
      else
        @rooms = Room.all.order('created_at DESC')
      end
  end
end
