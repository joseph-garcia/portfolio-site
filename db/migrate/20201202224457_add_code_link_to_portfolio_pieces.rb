class AddCodeLinkToPortfolioPieces < ActiveRecord::Migration[6.0]
  def change
    add_column :portfolio_pieces, :code_link, :string
  end
end
