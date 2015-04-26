require 'test_helper'

class LibrRelLibUsrsControllerTest < ActionController::TestCase
  setup do
    @libr_rel_lib_usr = libr_rel_lib_usrs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:libr_rel_lib_usrs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create libr_rel_lib_usr" do
    assert_difference('LibrRelLibUsr.count') do
      post :create, libr_rel_lib_usr: { libr_libro_id: @libr_rel_lib_usr.libr_libro_id, libr_usuario_id: @libr_rel_lib_usr.libr_usuario_id, otro: @libr_rel_lib_usr.otro, ubicacion: @libr_rel_lib_usr.ubicacion }
    end

    assert_redirected_to libr_rel_lib_usr_path(assigns(:libr_rel_lib_usr))
  end

  test "should show libr_rel_lib_usr" do
    get :show, id: @libr_rel_lib_usr
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @libr_rel_lib_usr
    assert_response :success
  end

  test "should update libr_rel_lib_usr" do
    patch :update, id: @libr_rel_lib_usr, libr_rel_lib_usr: { libr_libro_id: @libr_rel_lib_usr.libr_libro_id, libr_usuario_id: @libr_rel_lib_usr.libr_usuario_id, otro: @libr_rel_lib_usr.otro, ubicacion: @libr_rel_lib_usr.ubicacion }
    assert_redirected_to libr_rel_lib_usr_path(assigns(:libr_rel_lib_usr))
  end

  test "should destroy libr_rel_lib_usr" do
    assert_difference('LibrRelLibUsr.count', -1) do
      delete :destroy, id: @libr_rel_lib_usr
    end

    assert_redirected_to libr_rel_lib_usrs_path
  end
end
