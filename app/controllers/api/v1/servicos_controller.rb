class Api::V1::ServicosController < ApplicationController
  before_action :set_servico, only: %i[ show update destroy ]

  def index
    @servicos = Servico.all

    render json: @servicos
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
      render json: @servico
    else
      render json: @servico.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @servico.destroy
  end

  private
    def set_servico
      @servico = Servico.find(params[:id])
    end

    def servico_params
      params.require(:servico).permit(:nome_servico, :nome_pet, :data_inicio_servico, :data_final_servico, :valor_servico, :total_unidade_servico)
    end
end
