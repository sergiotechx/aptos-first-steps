module aptosz3::vectores {
    use std::debug::print;
    use std::vector::{ borrow} ; // Solo para crear un vector no es necesario importar la libreria.
    // Pero las operaciones de los vectores (como push, pop_back) si necesitan que la importes.

    fun practica() {
        let matriz: vector<vector<u8>> = vector[
            vector[1, 2, 3],
            vector[4, 5, 6],
            vector[7, 8, 9],
        ];
        let array_uno:vector<u8> = *borrow(&matriz, 0);
        let array_dos:vector<u8> = *borrow(&matriz, 1);
        let array_tres:vector<u8> = *borrow(&matriz, 2);
        //Pasamos de posicion de memoria a valores u8 para su facil impresion
        let elemento1:u8 =  *borrow(&array_uno, 0);
        let elemento2:u8 =  *borrow(&array_uno, 1);
        let elemento3:u8 =  *borrow(&array_uno, 2);
        print(&elemento1);
        print(&elemento2);
        print(&elemento3);
        elemento1 =  *borrow(&array_dos, 0);
        elemento2 =  *borrow(&array_dos, 1);
        elemento3 =  *borrow(&array_dos, 2);
        print(&elemento1);
        print(&elemento2);
        print(&elemento3);
        elemento1 =  *borrow(&array_tres, 0);
        elemento2 =  *borrow(&array_tres, 1);
        elemento3 =  *borrow(&array_tres, 2);
        print(&elemento1);
        print(&elemento2);
        print(&elemento3);
    }

    #[test]
    fun prueba() {
        practica();
    }
}
