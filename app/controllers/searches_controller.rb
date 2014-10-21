class SearchesController < ApplicationController

  # respond_to :html, :json

# In order to use respond_with,
# first you need to declare the formats your controller responds to in the class level.
  def new

  end

  def index

  end

  def create

  end

  def search
    @parameters = { term: params[:term], limit: 10 }
    render json: Yelp.client.search('Baltimore', @parameters)

    # Every time I change something, here is the error message for line 21:
    # 'One or more parameters are invalid in request' - WWHHYYYYY??!!!!

    # respond_with do |format|
    #   format.html
    #   format.json do
    #     render json: Yelp.client.search('Baltimore', @parameters)
    #   end
    # end
  end

end
