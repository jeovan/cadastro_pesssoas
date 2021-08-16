class V2::PessoasController < ApplicationController
  before_action :set_v2_pessoa, only: %i[ show edit update destroy ]

  # GET /v2/pessoas or /v2/pessoas.json
  def index
    @v2_pessoas = V2::Pessoa.all
  end

  # GET /v2/pessoas/1 or /v2/pessoas/1.json
  def show
  end

  # GET /v2/pessoas/new
  def new
    @v2_pessoa = V2::Pessoa.new
  end

  # GET /v2/pessoas/1/edit
  def edit
  end

  # POST /v2/pessoas or /v2/pessoas.json
  def create
    @v2_pessoa = V2::Pessoa.new(v2_pessoa_params)

    respond_to do |format|
      if @v2_pessoa.save
        format.html { redirect_to @v2_pessoa, notice: "Pessoa was successfully created." }
        format.json { render :show, status: :created, location: @v2_pessoa }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @v2_pessoa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /v2/pessoas/1 or /v2/pessoas/1.json
  def update
    respond_to do |format|
      if @v2_pessoa.update(v2_pessoa_params)
        format.html { redirect_to @v2_pessoa, notice: "Pessoa was successfully updated." }
        format.json { render :show, status: :ok, location: @v2_pessoa }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @v2_pessoa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /v2/pessoas/1 or /v2/pessoas/1.json
  def destroy
    @v2_pessoa.destroy
    respond_to do |format|
      format.html { redirect_to v2_pessoas_url, notice: "Pessoa was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_v2_pessoa
      @v2_pessoa = V2::Pessoa.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def v2_pessoa_params
      params.require(:v2_pessoa).permit(:nome, :idade, :email)
    end
end
