require 'test_helper'

class TransacaoEntradasControllerTest < ActionController::TestCase
  setup do
    @transacao_entrada = transacao_entradas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:transacao_entradas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create transacao_entrada" do
    assert_difference('TransacaoEntrada.count') do
      post :create, transacao_entrada: { created_at: @transacao_entrada.created_at, data_entrada: @transacao_entrada.data_entrada, id_entrada: @transacao_entrada.id_entrada, justifica_entrada: @transacao_entrada.justifica_entrada, tipo: @transacao_entrada.tipo, updated_at: @transacao_entrada.updated_at, valor: @transacao_entrada.valor }
    end

    assert_redirected_to transacao_entrada_path(assigns(:transacao_entrada))
  end

  test "should show transacao_entrada" do
    get :show, id: @transacao_entrada
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @transacao_entrada
    assert_response :success
  end

  test "should update transacao_entrada" do
    patch :update, id: @transacao_entrada, transacao_entrada: { created_at: @transacao_entrada.created_at, data_entrada: @transacao_entrada.data_entrada, id_entrada: @transacao_entrada.id_entrada, justifica_entrada: @transacao_entrada.justifica_entrada, tipo: @transacao_entrada.tipo, updated_at: @transacao_entrada.updated_at, valor: @transacao_entrada.valor }
    assert_redirected_to transacao_entrada_path(assigns(:transacao_entrada))
  end

  test "should destroy transacao_entrada" do
    assert_difference('TransacaoEntrada.count', -1) do
      delete :destroy, id: @transacao_entrada
    end

    assert_redirected_to transacao_entradas_path
  end
end
