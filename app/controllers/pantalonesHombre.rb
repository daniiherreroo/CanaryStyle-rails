class CamisetasHombre < ActionController::Base
    before_action : set_pantaloneHombre, only: [:show, :edit, :update, :destroy]
    
    # GET /pizzas
    # GET /pizzas.json
    def index
        @pantalonesHombre = PantalonesHombre.all
    end
    
    # GET /pizzas/1
    # GET /pizzas/1.json
    def show
    end
    
    # GET /pizzas/new
    def new
        @pantaloneHombre = PantalonesHombre.new
    end
    
    # GET /pizzas/1/edit
    def edit
    end
    
    # POST /pizzas
    # POST /pizzas.json
    def create
        @pantaloneHombre = PantalonesHombre.new(pantaloneHombre_params)
    
        respond_to do |format|
        if @pantaloneHombre.save
            format.html { redirect_to @pantaloneHombre, notice: 'La prenda se ha añadido correctamente' }
            format.json { render :show, status: :created, location: @pantaloneHombre }
        else
            format.html { render :new }
            format.json { render json: @pantaloneHombre.errors, status: :unprocessable_entity }
        end
        end
    end
    
    # PATCH/PUT /pizzas/1
    # PATCH/PUT /pizzas/1.json
    def update
        respond_to do |format|
        if @pantaloneHombre.update(pantaloneHombre_params)
            format.html { redirect_to @pantalonesHombre, notice: 'La prenda se ha actualizado correctamente' }
            format.json { render :show, status: :ok, location: @pantaloneHombre }
        else
            format.html { render :edit }
            format.json { render json: @pantaloneHombre.errors, status: :unprocessable_entity }
        end
        end
    end
    
    # DELETE /pizzas/1
    # DELETE /pizzas/1.json
    def destroy
        @pantaloneHombre.destroy
        respond_to do |format|
        format.html { redirect_to pantalonesHombre_url, notice: 'La prenda se ha eliminado correctamente' }
        format.json { head :no_content }
        end
    end
    
    private
        # Use callbacks to share common setup or constraints between actions.
        def set_camisetaHombre
        @pantaloneHombre = PantalonesHombre.find(params[:id])
        end
    
        # Only allow a list of trusted parameters through.
        def camisetaHombre_params
        params.require(:pantaloneHombre).permit(:name, :price, :source)
        end
    end
end