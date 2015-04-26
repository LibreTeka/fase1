require 'test_helper'

class LibrUsuariosControllerTest < ActionController::TestCase
  setup do
    @libr_usuario = libr_usuarios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:libr_usuarios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create libr_usuario" do
    assert_difference('LibrUsuario.count') do
      post :create, libr_usuario: { Apellido1: @libr_usuario.Apellido1, Apellido2: @libr_usuario.Apellido2, Nombre: @libr_usuario.Nombre, email: @libr_usuario.email, password: @libr_usuario.password, poblacion: @libr_usuario.poblacion }
    end

    assert_redirected_to libr_usuario_path(assigns(:libr_usuario))
  end

  test "should show libr_usuario" do
    get :show, id: @libr_usuario
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @libr_usuario
    assert_response :success
  end

  test "should update libr_usuario" do
    patch :update, id: @libr_usuario, libr_usuario: { Apellido1: @libr_usuario.Apellido1, Apellido2: @libr_usuario.Apellido2, Nombre: @libr_usuario.Nombre, email: @libr_usuario.email, password: @libr_usuario.password, poblacion: @libr_usuario.poblacion }
    assert_redirected_to libr_usuario_path(assigns(:libr_usuario))
  end

  test "should destroy libr_usuario" do
    assert_difference('LibrUsuario.count', -1) do
      delete :destroy, id: @libr_usuario
    end

    assert_redirected_to libr_usuarios_path
  end
end
