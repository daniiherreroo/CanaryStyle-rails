class CamisetasHombre < ActionController::Base
    before_action : set_camisetasHombre, only: [:show, :edit, :update, :destroy]
    
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
        @camisetasHombre = CamisetasHombre.new
    end
    
    # GET /pizzas/1/edit
    def edit
    end
    
    # POST /pizzas
    # POST /pizzas.json
    def create
        @camisetasHombre = CamisetasHombre.new(camisetasHombre_params)
    
        respond_to do |format|
        if @camisetasHombre.save
            format.html { redirect_to @camisetasHombre, notice: 'La prenda se ha añadido correctamente' }
            format.json { render :show, status: :created, location: @camisetasHombre }
        else
            format.html { render :new }
            format.json { render json: @camisetasHombre.errors, status: :unprocessable_entity }
        end
        end
    end
    
    # PATCH/PUT /pizzas/1
    # PATCH/PUT /pizzas/1.json
    def update
        respond_to do |format|
        if @camisetasHombre.update(camisetasHombre_params)
            format.html { redirect_to @camisetasHombre, notice: 'La prenda se ha actualizado correctamente' }
            format.json { render :show, status: :ok, location: @camisetasHombre }
        else
            format.html { render :edit }
            format.json { render json: @camisetasHombre.errors, status: :unprocessable_entity }
        end
        end
    end
    
    # DELETE /pizzas/1
    # DELETE /pizzas/1.json
    def destroy
        @camisetasHombre.destroy
        respond_to do |format|
        format.html { redirect_to camisetasHombre_url, notice: 'La prenda se ha eliminado correctamente' }
        format.json { head :no_content }
        end
    end
    
    private
        # Use callbacks to share common setup or constraints between actions.
        def set_camisetaHombre
        @camisetasHombre = CamisetasHombre.find(params[:id])
        end
    
        # Only allow a list of trusted parameters through.
        def camisetaHombre_params
        params.require(:camisetasHombre).permit(:name, :price, :source)
        end
    end
end