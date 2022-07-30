require "test_helper"

class ServicosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @servico = servicos(:one)
  end

  test "should get index" do
    get servicos_url, as: :json
    assert_response :success
  end

  test "should create servico" do
    assert_difference("Servico.count") do
      post servicos_url, params: { servico: { data_final_servico: @servico.data_final_servico, data_inicio_servico: @servico.data_inicio_servico, nome_pet: @servico.nome_pet, nome_servico: @servico.nome_servico, total_dias_servico: @servico.total_dias_servico, total_unidade_servico: @servico.total_unidade_servico, valor_servico: @servico.valor_servico, valor_subtotal: @servico.valor_subtotal, valor_total: @servico.valor_total } }, as: :json
    end

    assert_response :created
  end

  test "should show servico" do
    get servico_url(@servico), as: :json
    assert_response :success
  end

  test "should update servico" do
    patch servico_url(@servico), params: { servico: { data_final_servico: @servico.data_final_servico, data_inicio_servico: @servico.data_inicio_servico, nome_pet: @servico.nome_pet, nome_servico: @servico.nome_servico, total_dias_servico: @servico.total_dias_servico, total_unidade_servico: @servico.total_unidade_servico, valor_servico: @servico.valor_servico, valor_subtotal: @servico.valor_subtotal, valor_total: @servico.valor_total } }, as: :json
    assert_response :success
  end

  test "should destroy servico" do
    assert_difference("Servico.count", -1) do
      delete servico_url(@servico), as: :json
    end

    assert_response :no_content
  end
end
