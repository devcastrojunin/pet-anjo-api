class Api::V1::ServicosController < ApplicationController
  before_action :set_servico, only: %i[ show update destroy ]
  

  def index
    @servicos = Servico.all
    if @servicos.empty?
      render json: {error: "Nenhum item encontrado."}, status: :not_found
    else
      render json: @servicos
    end
  end

  def show
    render json: @servico
  end

  def create
    @servico = Servico.new(servico_params)

    if @servico.save
      render json: @servico, status: :created
    else
      render json: @servico.errors, status: :unprocessable_entity
    end
  end

  def update
    if @servico.update(servico_params)
      render json: @servico, status: :success
    else
      render json: @servico.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @servico.destroy
    render json: {message: "Dados removidos com sucesso."}, status: :ok
  end

  private
    def set_servico
      @servico = Servico.find(params[:id])
    end

    def servico_params
      params.require(:servico).permit(:nome_servico, :valor_servico)
    end
end
