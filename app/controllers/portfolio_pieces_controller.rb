class PortfolioPiecesController < ApplicationController
  def index
    @portfolio_items = PortfolioPiece.all
  end

  def java
    @java_items = PortfolioPiece.java 
  end

  def new
    @portfolio_item = PortfolioPiece.new
    3.times { @portfolio_item.technologies.build }
  end
  
  def show
    @portfolio_item = PortfolioPiece.find(params[:id])
  end

  def create
    @portfolio_item = PortfolioPiece.new(portfolio_params)

    respond_to do |format|
      if @portfolio_item.save
        format.html { redirect_to projects_path, notice: 'Project piece was successfully created.' }
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
      if @portfolio_item.update(portfolio_params)
        format.html { redirect_to portfolio_pieces_path, notice: 'Project was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    # Perform the lookup
    @portfolio_item = PortfolioPiece.find(params[:id])

    # Destroy/delete the record
    @portfolio_item.destroy

    # Redirect
    respond_to do |format|
      format.html { redirect_to portfolio_pieces_path, notice: "Project was removed."}
    end
    
  end

  def blog_params
    params.require(:portfolio_piece).permit(:title, :subtitle, :body)
  end

  private
  def portfolio_params
    params.require(:portfolio_piece).permit(:title,
                                            :subtitle,
                                            :body,
                                            technologies_attributes: [:name]
                                          )
  end

end
