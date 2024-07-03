module aptosz3::tipos_primitivos {
    use std::debug::print;

    const Constante : u8 = 1; 

    fun practica() {
        let variable : u8 =2; 
        print(&Constante);  
        print(&variable); 

        let sonIguales :bool= Constante == variable; 
        let val1MayorVal2 :bool= Constante > variable; 
        let comparaciones :bool = sonIguales && val1MayorVal2; 
        print(&comparaciones);
    }

    #[test]
    fun prueba() {
        practica();
    }
}