package manutencao

class Contato {

	String nome
	String telefone
	String email

	String toString(){
		this.nome
	}

    static constraints = {
    	nome nullable:false, blank:false, maxSize:128
    	telefone nullable:false, blank:false, maxSize:128
    	email maxSize:128
    }
}
