class SearchesController < ApplicationController

  def index

  end

  def search
    parameters = { term: params[:term], limit: 25 }

    respond_to do |format|
      format.html
      format.json do
        render json: Yelp.client.search('Baltimore', parameters)
      end
    end
  end

end
