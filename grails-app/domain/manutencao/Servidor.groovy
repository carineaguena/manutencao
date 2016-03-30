package manutencao

class Servidor {

	String siape
	String nome
	String cargo
	String setor

    String toString(){
        this.nome
    }

    static constraints = {
    	siape nullable:false, blank:false, maxSize:128
    	nome nullable:false, blank:false, maxSize:128
    	cargo nullable:false, blank:false, maxSize:128
    	setor nullable:false, blank:false, maxSize:128
    }
}
