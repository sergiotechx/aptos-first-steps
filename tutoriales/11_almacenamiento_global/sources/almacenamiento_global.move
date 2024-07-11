
module cuenta::almacenamiento_global {
    use std::signer; // Global Storage trabaja sobre el signer y address como vimos anteriormente.
    const ValorNOValido:u64 = 1;
    struct Contador has key { 
        minimo:u64,// valor minimo de inicio
        valor: u64, // el del ejemplo
        primero:u64,// el primer valor valor
        acumulado:u64,//acumulado no se resetea
     } 
    
    public entry fun publicar(cuenta: &signer, minimo:u64,valor: u64) {
        assert!(valor < minimo, ValorNOValido);
        let cont_inicial = Contador { minimo,valor,primero:valor, acumulado:valor }; 
        move_to(cuenta, cont_inicial)  
    }

    
    public fun obtener_contador(direccion: address): u64 acquires Contador {
        borrow_global<Contador>(direccion).valor 
    }

    
    public entry fun incrementar(direccion: address) acquires Contador {
        let referencia_contador = &mut borrow_global_mut<Contador>(direccion).valor; // Y accedemos a su campo valor usando .
        *referencia_contador = *referencia_contador + 1;
        let referencia_acumulado = &mut borrow_global_mut<Contador>(direccion).acumulado;
        *referencia_acumulado = *referencia_acumulado +1;
    }

   
    public entry fun restablecer(cuenta: &signer) acquires Contador { 
        let referencia_contador = &mut borrow_global_mut<Contador>(signer::address_of(cuenta)).valor; // Por lo que convertimos usando la operacion address_of
        *referencia_contador = 0
    }

    
    #[view] 
    public fun existe(direccion: address): bool { 
        exists<Contador>(direccion) 
    }

    
    public entry fun eliminar(cuenta: &signer) acquires Contador { 
          let contador = move_from<Contador>(signer::address_of(cuenta));
          let Contador { minimo:_,valor: _ ,primero:_, acumulado:_ } = contador; // Recuerda la desestructuracion de structs.
    }

    #[view]
    public fun getMinimo(direccion: address): u64 acquires Contador { 
        borrow_global<Contador>(direccion).minimo 
    }
    #[view]
    public fun getMinimo(direccion: address): u64 acquires Contador { 
        borrow_global<Contador>(direccion).minimo 
    }
    #[view]
    public fun getPrimero(direccion: address): u64 acquires Contador { 
        borrow_global<Contador>(direccion).primero 
    }
    #[view]
    public fun getAcumulado(direccion: address): u64 acquires Contador { 
        borrow_global<Contador>(direccion).acumulado 
    }

   
}
