class TransacaoSaidasController < ApplicationController
  before_action :set_transacao_saida, only: [:show, :edit, :update, :destroy]

  # GET /transacao_saidas
  # GET /transacao_saidas.json
  def index
    @transacao_saidas = TransacaoSaida.all
  end

  # GET /transacao_saidas/1
  # GET /transacao_saidas/1.json
  def show
  end

  # GET /transacao_saidas/new
  def new
    @transacao_saida = TransacaoSaida.new
  end

  # GET /transacao_saidas/1/edit
  def edit
  end

  # POST /transacao_saidas
  # POST /transacao_saidas.json
  def create
    @transacao_saida = TransacaoSaida.new(transacao_saida_params)

    respond_to do |format|
      if @transacao_saida.save
        format.html { redirect_to @transacao_saida, notice: 'Transação de saida criada com sucesso.' }
        format.json { render :show, status: :created, location: @transacao_saida }
      else
        format.html { render :new }
        format.json { render json: @transacao_saida.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /transacao_saidas/1
  # PATCH/PUT /transacao_saidas/1.json
  def update
    respond_to do |format|
      if @transacao_saida.update(transacao_saida_params)
        format.html { redirect_to @transacao_saida, notice: 'Transação de saida modificada com sucesso.' }
        format.json { render :show, status: :ok, location: @transacao_saida }
      else
        format.html { render :edit }
        format.json { render json: @transacao_saida.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /transacao_saidas/1
  # DELETE /transacao_saidas/1.json
  def destroy
    @transacao_saida.destroy
    respond_to do |format|
      format.html { redirect_to transacao_saidas_url, notice: 'Transacao de saida deletada com sucesso.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_transacao_saida
      @transacao_saida = TransacaoSaida.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def transacao_saida_params
      params.require(:transacao_saida).permit(:valor, :data_saida, :justifica_saida, :img_comprov, :created_at, :updated_at)
    end
end
