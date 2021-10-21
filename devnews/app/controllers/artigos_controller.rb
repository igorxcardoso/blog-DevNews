class ArtigosController < ApplicationController
  def index
    # Fazer uma listagem
    @artigos = Artigo.all  # Com o @ vai ficar disponivel na view
  end

  def show
    @artigo = Artigo.find(params[:id])
    # O para params[:id] vai trazer o id do artigo
    # O Rails pega o parâmetro da URL com params[:id]
  end
end
