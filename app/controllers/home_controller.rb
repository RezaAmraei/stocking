class HomeController < ApplicationController
  def index
    @api = StockQuote::Stock.new(api_key: 'pk_b79c95bf30ef4054b6b06441124952f8')
    
    if params[:ticker] == ""
      @nothing = "Hey You Forgot To Enter a Symbol"
    elsif params[:ticker]
      @stock = StockQuote::Stock.quote(params[:ticker])
    end
  end

  def about
  end
end
