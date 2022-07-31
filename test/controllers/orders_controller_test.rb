require "test_helper"

class OrdersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @order = orders(:one)
  end

  test "should get index" do
    get orders_url, as: :json
    assert_response :success
  end

  test "should create order" do
    assert_difference("Order.count") do
      post orders_url, params: { order: { data_final_servico: @order.data_final_servico, data_inicio_servico: @order.data_inicio_servico, nome_pet: @order.nome_pet, servico_id: @order.servico_id, total_unidade_servico: @order.total_unidade_servico, user_id: @order.user_id } }, as: :json
    end

    assert_response :created
  end

  test "should show order" do
    get order_url(@order), as: :json
    assert_response :success
  end

  test "should update order" do
    patch order_url(@order), params: { order: { data_final_servico: @order.data_final_servico, data_inicio_servico: @order.data_inicio_servico, nome_pet: @order.nome_pet, servico_id: @order.servico_id, total_unidade_servico: @order.total_unidade_servico, user_id: @order.user_id } }, as: :json
    assert_response :success
  end

  test "should destroy order" do
    assert_difference("Order.count", -1) do
      delete order_url(@order), as: :json
    end

    assert_response :no_content
  end
end
