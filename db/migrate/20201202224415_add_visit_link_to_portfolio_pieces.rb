class AddVisitLinkToPortfolioPieces < ActiveRecord::Migration[6.0]
  def change
    add_column :portfolio_pieces, :visit_link, :string
  end
end
