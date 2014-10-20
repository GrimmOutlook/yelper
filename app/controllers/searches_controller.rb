class SearchesController < ApplicationController

  def new

  end

  def index

  end

  def create

  end

  def search
    @parameters = { term: params[:term], limit: 25 }

    respond_to do |format|
      format.html
      format.json do
        render json: Yelp.client.search('Baltimore', @parameters)
      end
    end
  end

end
