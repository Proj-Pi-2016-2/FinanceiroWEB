class TransacaoEntradasController < ApplicationController
  before_action :set_transacao_entrada, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /transacao_entradas
  # GET /transacao_entradas.json
  def index
    @transacao_entradas = TransacaoEntrada.all
    if params[:search]
      @transacao_entradas = TransacaoEntrada.search(params[:search])
    else
      @transacao_entradas = TransacaoEntrada.all
    end
  end


  # GET /transacao_entradas/1
  # GET /transacao_entradas/1.json
  def show
  end

  # GET /transacao_entradas/new
  def new
    @socios = Socio.all
    @transacao_entrada = TransacaoEntrada.new
  end

  # GET /mensalidades
  def mensalidades
    @socios = Socio.all
    @transacao_entrada = TransacaoEntrada.where(tipo: "Mensalidade").all
  end

  # GET /mensalidades/new
  def mensalidade_new
    @socios = Socio.all
    @transacao_entrada = TransacaoEntrada.new
  end

  # GET /mensalidades/status
  def mensalidades_status
    @socios = Socio.all
    @transacao_entrada = TransacaoEntrada.where(tipo: "Mensalidade").all
  end

  # GET /mensalidades/1/edit
  def edit
  end

  # POST /transacao_entradas
  # POST /transacao_entradas.json
  def create
    @transacao_entrada = TransacaoEntrada.new(transacao_entrada_params)

    puts "DEBUG: #{params[:transacao_entrada][:idSocio]}"

    respond_to do |format|
      if @transacao_entrada.save
        format.html { redirect_to @transacao_entrada, notice: 'Transacao de entrada criada com sucesso.' }
        format.json { render :show, status: :created, location: @transacao_entrada }
      else
        format.html { render :new }
        format.json { render json: @transacao_entrada.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /transacao_entradas/1
  # PATCH/PUT /transacao_entradas/1.json
  def update
    respond_to do |format|
      if @transacao_entrada.update(transacao_entrada_params)
        format.html { redirect_to @transacao_entrada, notice: 'Transacao de entrada modifacada com sucesso.' }
        format.json { render :show, status: :ok, location: @transacao_entrada }
      else
        format.html { render :edit }
        format.json { render json: @transacao_entrada.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /transacao_entradas/1
  # DELETE /transacao_entradas/1.json
  def destroy
    @transacao_entrada.destroy
    respond_to do |format|
      format.html { redirect_to transacao_entradas_url, notice: 'Transacao entrada deletada com sucesso.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_transacao_entrada
      @transacao_entrada = TransacaoEntrada.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def transacao_entrada_params
      params.require(:transacao_entrada).permit(:valor, :data_entrada, :justifica_entrada, :tipo, :idSocio, :created_at, :updated_at)
    end
end
