class CamisetasHombre < ActionController::Base
    before_action : set_camisetaHombre, only: [:show, :edit, :update, :destroy]
    
    # GET /pizzas
    # GET /pizzas.json
    def index
        @camisetasHombre = CamisetasHombre.all
    end
    
    # GET /pizzas/1
    # GET /pizzas/1.json
    def show
    end
    
    # GET /pizzas/new
    def new
        @camisetaHombre = CamisetasHombre.new
    end
    
    # GET /pizzas/1/edit
    def edit
    end
    
    # POST /pizzas
    # POST /pizzas.json
    def create
        @camisetaHombre = CamisetasHombre.new(camisetaHombre_params)
    
        respond_to do |format|
        if @camisetaHombre.save
            format.html { redirect_to @camisetaHombre, notice: 'La prenda se ha añadido correctamente' }
            format.json { render :show, status: :created, location: @camisetaHombre }
        else
            format.html { render :new }
            format.json { render json: @camisetaHombre.errors, status: :unprocessable_entity }
        end
        end
    end
    
    # PATCH/PUT /pizzas/1
    # PATCH/PUT /pizzas/1.json
    def update
        respond_to do |format|
        if @camisetaHombre.update(camisetaHombre_params)
            format.html { redirect_to @camisetaHombre, notice: 'La prenda se ha actualizado correctamente' }
            format.json { render :show, status: :ok, location: @camisetaHombre }
        else
            format.html { render :edit }
            format.json { render json: @camisetaHombre.errors, status: :unprocessable_entity }
        end
        end
    end
    
    # DELETE /pizzas/1
    # DELETE /pizzas/1.json
    def destroy
        @camisetaHombre.destroy
        respond_to do |format|
        format.html { redirect_to camisetasHombre_url, notice: 'La prenda se ha eliminado correctamente' }
        format.json { head :no_content }
        end
    end
    
    private
        # Use callbacks to share common setup or constraints between actions.
        def set_camisetaHombre
        @camisetaHombre = CamisetasHombre.find(params[:id])
        end
    
        # Only allow a list of trusted parameters through.
        def camisetaHombre_params
        params.require(:camisetaHombre).permit(:name, :price, :source)
        end
    end
end