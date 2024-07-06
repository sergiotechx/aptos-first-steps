module aptosz3::cadenas {
    use std::debug::print;
    use std::string_utils::debug_string;
    use std::string::{String,utf8};
    use std::option::{Option, some};
    struct Persona has drop{ 
        nombre: String,
        edad: u8,
        sexo:u8,
    } 
      struct Clase has drop{
        materia: String,
        horario: String,
        aula: String,
        maestro: Persona,
    }
    struct Escuela has drop{
        nombre: String,
        domicilio: String,
        clases: vector<Clase>,
    }
   fun llenarDatos() {
        let escuela= Escuela{
            nombre:utf8(b"Blockchain de la buena esperanza"),
            domicilio:utf8(b"Decentralizada"),
            clases: vector[
                        Clase{
                                materia:utf8(b"Clases de consenso"),
                                horario:utf8(b"L-M-W 8:00-10:00"),
                                aula:utf8(b"5A"),
                                maestro: Persona{
                                                nombre: utf8(b"Satoshi Nakamoto"),
                                                edad: 40,
                                                sexo:0,
                                               }
                        },
                        Clase{
                                materia:utf8(b"Modular vs monolito"),
                                horario:utf8(b"J-V 8:00-10:00"),
                                aula:utf8(b"5A"),
                                maestro: Persona{
                                                nombre: utf8(b"Gavin Woods"),
                                                edad: 40,
                                                sexo:0,
                                                }
                        }

            ]
        } ;
        print(&debug_string(&escuela));
        
    }    
    
    #[test]
    fun prueba() {
        llenarDatos();
    }
}