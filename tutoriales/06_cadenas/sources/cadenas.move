module aptosz3::cadenas {
    use std::debug::print;
    use std::string::{utf8, is_empty, append, append_utf8, insert};
    use aptos_std::string_utils::{to_string, debug_string};

    fun practica() {
        let poema1 = utf8(b"Amemonos sobre las tumbas en silencio \nComo estatuas bajo el mar\nLos dos unidos por las algas del olvido\nLas cosas del mundo en este anochecer");
        let poemalinea1 = utf8(b"Amemonos sobre las tumbas en silencio");
        let poemalinea2 = utf8(b"\nComo estatuas bajo el mar");
        let poemalinea3 = utf8(b"\nLos dos unidos por las algas del olvido");
        let poemalinea4 = utf8(b"\nLas cosas del mundo en este anochecer");
        let poema2 = utf8(b"");
        append(&mut poema2,poemalinea1);
        append(&mut poema2,poemalinea2);
        append(&mut poema2,poemalinea3);
        append(&mut poema2,poemalinea4);
        print(&utf8(b"Poema1:"));
        print(&poema1);
        print(&utf8(b"\nPoema2:"));
        print(&poema2);
        /*Responde: Cual de los dos metodos crees que es mejor y porque?*/
        /*
        Si nos vamos por calidad en lectura, a nivel personal me voy por poema2, 
        ya que no tenemos con el manejo basico de strings algo como el batik
        https://developer.mozilla.org/es/docs/Web/JavaScript/Reference/Template_literals
        donde podemos unir muchas lineas sin ningun lio.
        
        Si somos estrictos en uso de memoria y eficiencia poema 1 va al grano y no desperdicia
        ciclos de relog y memoria, por el contrario poema2 usa mas recursos y operaciones en la 
        concatenacion.
        */
    }

    #[test]
    fun prueba() {
        practica();
    }
}
