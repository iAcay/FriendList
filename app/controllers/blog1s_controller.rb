class Blog1sController < ApplicationController
  before_action :set_blog1, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: [:index,:show]
  before_action :correct_user, only: [:edmit, :update, :destroy]
  # GET /blog1s or /blog1s.json
  def index
    @blog1s = Blog1.all
  end

  # GET /blog1s/1 or /blog1s/1.json
  def show
  end

  # GET /blog1s/new
  def new
    #@blog1 = Blog1.new
    @blog1 = current_user.blog1s.build
  end

  # GET /blog1s/1/edit
  def edit
  end

  # POST /blog1s or /blog1s.json
  def create
    #@blog1 = Blog1.new(blog1_params)
    @blog1 = current_user.blog1s.build(blog1_params)

    respond_to do |format|
      if @blog1.save
        format.html { redirect_to blog1_url(@blog1), notice: "Blog was successfully created." }
        format.json { render :show, status: :created, location: @blog1 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @blog1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blog1s/1 or /blog1s/1.json
  def update
    respond_to do |format|
      if @blog1.update(blog1_params)
        format.html { redirect_to blog1_url(@blog1), notice: "Blog was successfully updated." }
        format.json { render :show, status: :ok, location: @blog1 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @blog1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blog1s/1 or /blog1s/1.json
  def destroy
    @blog1.destroy
    respond_to do |format|
      format.html { redirect_to blog1s_url, notice: "Blog was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def correct_user
    @blog1 = current_user.blog1s.find_by(id: params[:id])
    redirect_to blog1s_path, notice: "Not Authorized To Edit This Blog" if @blog1.nil?
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blog1
      @blog1 = Blog1.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def blog1_params
      params.require(:blog1).permit(:first_name, :last_name, :email, :phone, :twitter, :user_id)
    end
end
