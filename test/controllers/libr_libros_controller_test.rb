require 'test_helper'

class LibrLibrosControllerTest < ActionController::TestCase
  setup do
    @libr_libro = libr_libros(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:libr_libros)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create libr_libro" do
    assert_difference('LibrLibro.count') do
      post :create, libr_libro: { autor: @libr_libro.autor, comentario: @libr_libro.comentario, editorial: @libr_libro.editorial, otro1: @libr_libro.otro1, otro2: @libr_libro.otro2, titulo: @libr_libro.titulo }
    end

    assert_redirected_to libr_libro_path(assigns(:libr_libro))
  end

  test "should show libr_libro" do
    get :show, id: @libr_libro
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @libr_libro
    assert_response :success
  end

  test "should update libr_libro" do
    patch :update, id: @libr_libro, libr_libro: { autor: @libr_libro.autor, comentario: @libr_libro.comentario, editorial: @libr_libro.editorial, otro1: @libr_libro.otro1, otro2: @libr_libro.otro2, titulo: @libr_libro.titulo }
    assert_redirected_to libr_libro_path(assigns(:libr_libro))
  end

  test "should destroy libr_libro" do
    assert_difference('LibrLibro.count', -1) do
      delete :destroy, id: @libr_libro
    end

    assert_redirected_to libr_libros_path
  end
end
