package manutencao

class Empresa {

	String nome
	String cnpj
	String razao_social
	String email
	String objeto
	Date vigencia_contrato
	static belongsTo = [contato:Contato, endereco:Endereco]

    String toString(){
        this.nome
    }

    static constraints = {
    	nome nullable:false, blank:false, maxSize:128, unique:true
    	cnpj nullable:false, blank:false, maxSize:128, unique:true
    	razao_social nullable:false, blank:false, maxSize:128, unique:true
    	email nullable:false, blank:false, maxSize:128
    	objeto nullable:false, blank:false, maxSize:128
    	contato nullable:false
    	endereco nullable:false
    }
}
