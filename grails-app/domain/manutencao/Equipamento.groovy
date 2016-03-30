package manutencao

class Equipamento {

	String patrimonio
	String nome
	String descricao
	String local
	static belongsTo = [servidor:Servidor]

    String toString(){
        this.nome
    }

    static constraints = {
    	patrimonio nullable:false, blank:false, maxSize:128, unique:true
    	nome nullable:false, blank:false, maxSize:128
    	descricao maxSize:128
    	local maxSize:128
    	servidor nullable:false
    }
}
