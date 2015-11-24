class LibrLibrosController < ApplicationController
  before_action :set_libr_libro, only: [:show, :edit, :update, :destroy]

  # GET /libr_libros
  # GET /libr_libros.json
  def index
    @libr_libros = LibrLibro.all
  end

  # GET /libr_libros/1
  # GET /libr_libros/1.json
  def show
  end

  # GET /libr_libros/new
  def new
    @libr_libro = LibrLibro.new
  end

  # GET /libr_libros/1/edit
  def edit
  end

  # POST /libr_libros
  # POST /libr_libros.json
  def create
    @libr_libro = LibrLibro.new(libr_libro_params)

    respond_to do |format|
      if @libr_libro.save
        format.html { redirect_to @libr_libro, notice: 'Libr libro was successfully created.' }
        format.json { render :show, status: :created, location: @libr_libro }
      else
        format.html { render :new }
        format.json { render json: @libr_libro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /libr_libros/1
  # PATCH/PUT /libr_libros/1.json
  def update
    respond_to do |format|
      if @libr_libro.update(libr_libro_params)
        format.html { redirect_to @libr_libro, notice: 'Libr libro was successfully updated.' }
        format.json { render :show, status: :ok, location: @libr_libro }
      else
        format.html { render :edit }
        format.json { render json: @libr_libro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /libr_libros/1
  # DELETE /libr_libros/1.json
  def destroy
    @libr_libro.destroy
    respond_to do |format|
      format.html { redirect_to libr_libros_url, notice: 'Libr libro was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_libr_libro
      @libr_libro = LibrLibro.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def libr_libro_params
      params.require(:libr_libro).permit(:titulo, :autor, :editorial, :comentario, :otro1, :otro2)
    end
end
