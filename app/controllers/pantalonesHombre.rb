class CamisetasHombre < ActionController::Base
    before_action : set_pantalonesHombre, only: [:show, :edit, :update, :destroy]
    
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
        @pantalonesHombre = PantalonesHombre.new
    end
    
    # GET /pizzas/1/edit
    def edit
    end
    
    # POST /pizzas
    # POST /pizzas.json
    def create
        @pantalonesHombre = PantalonesHombre.new(pantalonesHombre_params)
    
        respond_to do |format|
        if @pantalonesHombre.save
            format.html { redirect_to @pantalonesHombre, notice: 'La prenda se ha añadido correctamente' }
            format.json { render :show, status: :created, location: @pantalonesHombre }
        else
            format.html { render :new }
            format.json { render json: @pantalonesHombre.errors, status: :unprocessable_entity }
        end
        end
    end
    
    # PATCH/PUT /pizzas/1
    # PATCH/PUT /pizzas/1.json
    def update
        respond_to do |format|
        if @pantalonesHombre.update(pantalonesHombre_params)
            format.html { redirect_to @pantalonesHombre, notice: 'La prenda se ha actualizado correctamente' }
            format.json { render :show, status: :ok, location: @pantalonesHombre }
        else
            format.html { render :edit }
            format.json { render json: @pantalonesHombre.errors, status: :unprocessable_entity }
        end
        end
    end
    
    # DELETE /pizzas/1
    # DELETE /pizzas/1.json
    def destroy
        @pantalonesHombre.destroy
        respond_to do |format|
        format.html { redirect_to pantalonesHombre_url, notice: 'La prenda se ha eliminado correctamente' }
        format.json { head :no_content }
        end
    end
    
    private
        # Use callbacks to share common setup or constraints between actions.
        def set_camisetaHombre
        @pantalonesHombre = PantalonesHombre.find(params[:id])
        end
    
        # Only allow a list of trusted parameters through.
        def camisetaHombre_params
        params.require(:pantalonesHombre).permit(:name, :price, :source)
        end
    end
end