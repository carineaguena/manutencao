package manutencao

class Servico {

	String problema
	String status
	Date data_solicitacao
	Date data_final

	static belongsTo = [equipamento:Equipamento, servidor:Servidor, empresa:Empresa]
    
    static constraints = {
  		equipamento nullable:false
  		servidor nullable:false
  		empresa nullable:false
  		problema nullable:false, blank:false, maxSize:128
    }
}
