class PortfolioPiecesController < ApplicationController
  def index
    @portfolio_items = PortfolioPiece.all
  end

  def new
    @portfolio_item = PortfolioPiece.new
  end
  
  def show
    @portfolio_item = PortfolioPiece.find(params[:id])
  end

  def create
    @portfolio_item = PortfolioPiece.new(blog_params)

    respond_to do |format|
      if @portfolio_item.save
        format.html { redirect_to portfolio_pieces_path, notice: 'Project piece was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def edit
    @portfolio_item = PortfolioPiece.find(params[:id])
  end

  def update
    @portfolio_item = PortfolioPiece.find(params[:id])
    respond_to do |format|      
      if @portfolio_item.update(blog_params)
        format.html { redirect_to portfolio_pieces_path, notice: 'Project was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def blog_params
    params.require(:portfolio_piece).permit(:title, :subtitle, :body)
  end

end
