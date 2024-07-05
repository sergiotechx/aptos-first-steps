module aptosz3::condicionales {
    use std::debug::print;
    use std::string::utf8;
    const EMenorEdad: u64  = 0;
    const ESinAcceso: u64 = 1; // Usualmente las constantes para indicar un error inician con E mayuscula, seguido de la razon del error.
    const NO_HAY_ACCESO: u64 = 2; // Aunque no es necesario, solo se descriptivo en tus errores.

    fun practica1() {
        let edad :u8 = 18;
        if(edad >=18){
           print(&utf8(b"Contenido del programa")); 
        } else{
            abort(EMenorEdad)
        }
    }
    
    fun practica2() {
        let edad :u8 = 16;
        if(edad >=18){
           print(&utf8(b"Contenido del programa")); 
        } else{
            assert!(false, EMenorEdad);
        }
    }
     

    #[test]
    fun reto1() {
        practica1();
    }
    fun reto2(){
        practica2();
    }
}
