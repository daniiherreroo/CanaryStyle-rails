class CamisetasHombreController < ActionController::Base
    before_action : set_camisetahombre, only: [:show, :edit, :update, :destroy]
    
    # GET /pizzas
    # GET /pizzas.json
    def index
        @camisetashombre = CamisetaHombre.all
    end
    
    # GET /pizzas/1
    # GET /pizzas/1.json
    def show
    end
    
    # GET /pizzas/new
    def new
        @camisetahombre = CamisetaHombre.new
    end
    
    # GET /pizzas/1/edit
    def edit
    end
    
    # POST /pizzas
    # POST /pizzas.json
    def create
        @camisetahombre = CamisetaHombre.new(camisetahombre_params)
    
        respond_to do |format|
        if @camisetahombre.save
            format.html { redirect_to @camisetahombre, notice: 'La prenda se ha añadido correctamente' }
            format.json { render :show, status: :created, location: @camisetahombre }
        else
            format.html { render :new }
            format.json { render json: @camisetahombre.errors, status: :unprocessable_entity }
        end
        end
    end
    
    # PATCH/PUT /pizzas/1
    # PATCH/PUT /pizzas/1.json
    def update
        respond_to do |format|
        if @camisetahombre.update(camisetahombre_params)
            format.html { redirect_to @camisetahombre, notice: 'La prenda se ha actualizado correctamente' }
            format.json { render :show, status: :ok, location: @camisetahombre }
        else
            format.html { render :edit }
            format.json { render json: @camisetahombre.errors, status: :unprocessable_entity }
        end
        end
    end
    
    # DELETE /pizzas/1
    # DELETE /pizzas/1.json
    def destroy
        @camisetahombre.destroy
        respond_to do |format|
        format.html { redirect_to camisetashombre_url, notice: 'La prenda se ha eliminado correctamente' }
        format.json { head :no_content }
        end
    end
    
    private
        # Use callbacks to share common setup or constraints between actions.
        def set_camisetahombre
        @camisetahombre = CamisetaHombre.find(params[:id])
        end
    
        # Only allow a list of trusted parameters through.
        def camisetahombre_params
        params.require(:camisetahombre).permit(:name, :price, :source)
        end
    end
end