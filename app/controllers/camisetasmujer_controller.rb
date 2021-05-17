class CamisetasMujerController < ApplicationController
    before_action :set_camisetaMujer, only: [:show, :edit, :update, :destroy]
  
    # GET /camisetasMujer
    # GET /camisetasMujer.json
    def index
      @camisetasMujer = CamisetaMujer.all
    end
  
    # GET /camisetasMujer/1
    # GET /camisetasMujer/1.json
    def show
    end
  
    # GET /camisetasMujer/new
    def new
      @camisetaMujer = CamisetaMujer.new
    end
  
    # GET /camisetasMujer/1/edit
    def edit
    end
  
    # POST /camisetasMujer
    # POST /camisetasMujer.json
    def create
      @camisetaMujer = CamisetaMujer.new(camisetaMujer_params)
  
      respond_to do |format|
        if @camisetaMujer.save
          format.html { redirect_to @camisetaMujer, notice: 'La prenda se ha añadido correctamente' }
          format.json { render :show, status: :created, location: @camisetaMujer }
        else
          format.html { render :new }
          format.json { render json: @camisetaMujer.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # PATCH/PUT /camisetasMujer/1
    # PATCH/PUT /camisetasMujer/1.json
    def update
      respond_to do |format|
        if @camisetaMujer.update(pizza_params)
          format.html { redirect_to @camisetaMujer, notice: 'La prenda se ha actualizado correctamente' }
          format.json { render :show, status: :ok, location: @camisetaMujer }
        else
          format.html { render :edit }
          format.json { render json: @camisetaMujer.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # DELETE /camisetasMujer/1
    # DELETE /camisetasMujer/1.json
    def destroy
      @camisetaMujer.destroy
      respond_to do |format|
        format.html { redirect_to pizzas_url, notice: 'La prenda se ha eliminado correctamente' }
        format.json { head :no_content }
      end
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_camisetaMujer
        @camisetaMujer = CamisetaMujer.find(params[:id])
      end
  
      # Only allow a list of trusted parameters through.
      def camisetaMujer_params
        params.require(:camisetaMujer).permit(:name, :price, :source)
      end
  end