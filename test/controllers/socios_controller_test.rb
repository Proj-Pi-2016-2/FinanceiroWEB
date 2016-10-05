require 'test_helper'

class SociosControllerTest < ActionController::TestCase
  setup do
    @socio = socios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:socios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create socio" do
    assert_difference('Socio.count') do
      post :create, socio: { cadeira: @socio.cadeira, cpf: @socio.cpf, created_at: @socio.created_at, dataNascimento: @socio.dataNascimento, email: @socio.email, endereco: @socio.endereco, nome: @socio.nome, permissao: @socio.permissao, senha: @socio.senha, sexo: @socio.sexo, telefone: @socio.telefone, updated_at: @socio.updated_at }
    end

    assert_redirected_to socio_path(assigns(:socio))
  end

  test "should show socio" do
    get :show, id: @socio
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @socio
    assert_response :success
  end

  test "should update socio" do
    patch :update, id: @socio, socio: { cadeira: @socio.cadeira, cpf: @socio.cpf, created_at: @socio.created_at, dataNascimento: @socio.dataNascimento, email: @socio.email, endereco: @socio.endereco, nome: @socio.nome, permissao: @socio.permissao, senha: @socio.senha, sexo: @socio.sexo, telefone: @socio.telefone, updated_at: @socio.updated_at }
    assert_redirected_to socio_path(assigns(:socio))
  end

  test "should destroy socio" do
    assert_difference('Socio.count', -1) do
      delete :destroy, id: @socio
    end

    assert_redirected_to socios_path
  end
end
