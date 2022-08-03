class Api::V1::OrdersController < ApplicationController
  before_action :set_order, only: %i[ destroy ]

  def index
    @orders = Order.all
    if @orders.empty?
      render json: {error: "Nenhum item encontrado."}, status: :not_found
    else
      render json: @orders
    end
  end

  def orders_by_user_id
    @orders = Order.where('user_id': params[:user_id])
    if @orders.empty?
      render json: {error: "Nenhum item encontrado."}, status: :not_found
    else
      render json: @orders
    end
    
  end

  def create
    @order = Order.new(order_params)

    if @order.save
      render json: @order, status: :created
    else
      render json: @order.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @order.destroy
    render json: {message: "Dados removidos com sucesso."}, status: :ok
  end

  private
    def set_order
      @order = Order.find(params[:id])
    end

    def order_params
      params.require(:order).permit(:nome_pet, :data_inicio_servico, :data_final_servico, :user_id, :servico_id, :total_unidade_servico)
    end
end
