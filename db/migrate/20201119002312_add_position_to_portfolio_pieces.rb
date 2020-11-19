class AddPositionToPortfolioPieces < ActiveRecord::Migration[6.0]
  def change
    add_column :portfolio_pieces, :position, :integer
  end
end
