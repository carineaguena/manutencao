package manutencao

class Endereco {

	String uf
	String cidade
	String cep
	String rua
	String bairro

    static constraints = {
    	uf maxSize:64
    	cidade maxSize:128
    	cep maxSize:64
    	rua maxSize:128
    	bairro maxSize:128
    }
}
