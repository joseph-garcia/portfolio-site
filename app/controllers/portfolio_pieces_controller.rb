class PortfolioPiecesController < ApplicationController
  def index
    @portfolio_items = PortfolioPiece.all
  end
end
