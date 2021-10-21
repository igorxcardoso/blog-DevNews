class ArtigosController < ApplicationController
  def index
    # Fazer uma listagem
    @artigos = Artigo.all  # Com o @ vai ficar disponivel na view
  end

  def show
    @artigo = Artigo.find(params[:id])
  end
end
