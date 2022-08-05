class HomeController < ApplicationController
  def index
    @api = StockQuote::Stock.new(api_key: 'pk_b79c95bf30ef4054b6b06441124952f8')
    
    if params[:ticker] && params[:ticker].strip != ''
      begin
        @stock = @stock = StockQuote::Stock.quote(params[:ticker])
      rescue
        @error = "Hey! That Stock Symbol Doesn't Exist!! Please try again."
      end
    elsif params[:ticker] == ""
      @nothing = "Hey! You forgot to enter a symbol!!"
    end
  end

  def about
  end
end
