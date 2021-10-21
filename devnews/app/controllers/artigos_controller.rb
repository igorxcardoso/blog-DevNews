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

	def new
		@artigo = Artigo.new()
	end

	def create
		@artigo = Artigo.new(params)

		if @artigo.save()
			redirect_to(@artigo)
			# Quando redireciono para @artigo, então o Rails vai redirecionar para o show
		else
			render(:new)
			# Vai enderizar apenas a view de new
			# Se desse um redirect_to() perdeiria o que já havia sido digitado
		end
	end


	private
	
	def artigo_params
		params
	end
end
