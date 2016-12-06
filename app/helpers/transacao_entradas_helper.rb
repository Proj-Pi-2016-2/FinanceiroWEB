module TransacaoEntradasHelper
	private
    # Use callbacks to share common setup or constraints between actions.
    def set_transacao_entrada
      @socio = Socio.find(params[:id])
    end
end
