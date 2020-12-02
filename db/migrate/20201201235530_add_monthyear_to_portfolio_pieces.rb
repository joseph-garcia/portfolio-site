class AddMonthyearToPortfolioPieces < ActiveRecord::Migration[6.0]
  def change
    add_column :portfolio_pieces, :monthyear, :string
  end
end
