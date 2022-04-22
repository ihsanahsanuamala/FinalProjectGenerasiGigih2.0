class OrdersMenusController < ApplicationController
  before_action :set_orders_menu, only: %i[ show edit update destroy ]

  # GET /orders_menus or /orders_menus.json
  def index
    @orders_menus = OrdersMenu.all
  end

  # GET /orders_menus/1 or /orders_menus/1.json
  def show
  end

  # GET /orders_menus/new
  def new
    @orders_menu = OrdersMenu.new
  end

  # GET /orders_menus/1/edit
  def edit
  end

  # POST /orders_menus or /orders_menus.json
  def create
    @orders_menu = OrdersMenu.new(orders_menu_params)

    respond_to do |format|
      if @orders_menu.save
        format.html { redirect_to orders_menu_url(@orders_menu), notice: "Orders menu was successfully created." }
        format.json { render :show, status: :created, location: @orders_menu }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @orders_menu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /orders_menus/1 or /orders_menus/1.json
  def update
    respond_to do |format|
      if @orders_menu.update(orders_menu_params)
        format.html { redirect_to orders_menu_url(@orders_menu), notice: "Orders menu was successfully updated." }
        format.json { render :show, status: :ok, location: @orders_menu }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @orders_menu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orders_menus/1 or /orders_menus/1.json
  def destroy
    @orders_menu.destroy

    respond_to do |format|
      format.html { redirect_to orders_menus_url, notice: "Orders menu was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_orders_menu
      @orders_menu = OrdersMenu.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def orders_menu_params
      params.require(:orders_menu).permit(:order_id, :menu_id, :integer)
    end
end
