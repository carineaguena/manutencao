import manutencao.*

class BootStrap {

    def init = { servletContext ->
    	if (!Usuario.count()){
    		def passwordHashed = "admin".encodeAsPassword()

			new Usuario(login: 'usuario', password: passwordHashed, name: 'Usuário do Sistema').save()
			new Usuario(login: 'admin', password: passwordHashed, name: 'Administrador').save()
		}

    }
    def destroy = {
    }
}
