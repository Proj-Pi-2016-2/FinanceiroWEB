require 'test_helper'

class TransacaoSaidasControllerTest < ActionController::TestCase
  setup do
    @transacao_saida = transacao_saidas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:transacao_saidas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create transacao_saida" do
    assert_difference('TransacaoSaida.count') do
      post :create, transacao_saida: { created_at: @transacao_saida.created_at, data_saida: @transacao_saida.data_saida, id_saida: @transacao_saida.id_saida, img_comprov: @transacao_saida.img_comprov, justifica_saida: @transacao_saida.justifica_saida, updated_at: @transacao_saida.updated_at, valor: @transacao_saida.valor }
    end

    assert_redirected_to transacao_saida_path(assigns(:transacao_saida))
  end

  test "should show transacao_saida" do
    get :show, id: @transacao_saida
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @transacao_saida
    assert_response :success
  end

  test "should update transacao_saida" do
    patch :update, id: @transacao_saida, transacao_saida: { created_at: @transacao_saida.created_at, data_saida: @transacao_saida.data_saida, id_saida: @transacao_saida.id_saida, img_comprov: @transacao_saida.img_comprov, justifica_saida: @transacao_saida.justifica_saida, updated_at: @transacao_saida.updated_at, valor: @transacao_saida.valor }
    assert_redirected_to transacao_saida_path(assigns(:transacao_saida))
  end

  test "should destroy transacao_saida" do
    assert_difference('TransacaoSaida.count', -1) do
      delete :destroy, id: @transacao_saida
    end

    assert_redirected_to transacao_saidas_path
  end
end
