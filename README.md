
# Systema de votación / Smart Contract
Este contrato inteligente implementa un sistema de votación simple donde los usuarios pueden votar por uno de los 4 candidatos: Laura, Juan, Jazmin y Ramiro.
El contrato almacena la información de los candidatos y sus respectivos recuentos de votos.

# Estructura del Contrato

El contrato consta de los siguientes elementos:

Estructura de Candidato: Define la estructura de un candidato, incluyendo su ID, nombre y recuento de votos.

Mapeo candidates: Almacena la información de los candidatos. La clave es el ID del candidato y el valor es una estructura Candidate que contiene su nombre y recuento de votos.

Variable candidatecount: Realiza un seguimiento del número total de candidatos.

Mapeo citizen: Almacena si un usuario ya ha votado. La clave es la dirección del usuario y el valor es un booleano que indica si ha votado.

constructor(): Esta función se llama cuando el contrato se despliega e inicializa los cuatro candidatos predeterminados, Laura, Juan, Jazmin y Ramiro.

Función addCandidate(string memory _name): Agrega un nuevo candidato al sistema. Esta función es privada y solo se puede llamar desde dentro del contrato.

Función vote(_candidateid): Permite a un usuario emitir su voto por un candidato. Comprueba si el usuario no ha votado ya, marca al usuario como que ha votado e incrementa el recuento de votos del candidato seleccionado.

# Despliegue y Uso

Para desplegar y utilizar el contrato, necesitará tener un entorno de desarrollo de Ethereum en funcionamiento y un compilador de Solidity. Una vez que haya configurado su entorno, puede seguir estos pasos:

Compile el contrato inteligente utilizando el compilador de Solidity.

Despliegue el contrato compilado en una red de la cadena de bloques Ethereum.

Interactúe con el contrato implementado utilizando las funciones del contrato.

Por ejemplo, para agregar un nuevo candidato llamado "Otro", llamaría a la función addCandidate("Otro"). 

Para emitir un voto por Juan, llamaría a la función vote(1).

# Consideraciones de Seguridad

Si bien este contrato proporciona un sistema de votación básico, es importante considerar los aspectos de seguridad al implementar sistemas de votación en el mundo real. Factores como el anonimato de los votantes, la inmutabilidad de los votos y la prevención del voto doble deben abordarse cuidadosamente para garantizar un proceso de votación seguro y justo.

# Pasos para compilar y desplegar el contrato en Remix

## Paso 1 :

Vaya a https://remix.ethereum.org/ . En la carpeta de contratos, encontrará algunos contratos predeterminados que Remix ya tiene por defecto.

Cuando usamos Solidity para escribir nuestros contratos inteligentes, se usa la extensión ".sol". 

Creemos ahora un nuevo contrato.

Para eso, haga clic derecho en contractos, seleccione New File. Nombra nuestro archivo como Voting  y escribe el código voting.sol de este repositorio.
https://github.com/Juanda16/voting/blob/main/voting.sol


## Paso 2 :

Haga clic en el compilador de solidity que se encuentra a la izquierda.

Ahora, en la lista desplegable, seleccione la versión 0.6.6.

Luego haga clic en Compilar Voting.sol

Puede seleccionar Compilación automática para que nuestro contrato se compile automáticamente cuando hagamos algunos cambios.

## Paso 3 :

Después de compilar nuestro contrato, ahora es el momento de implementar nuestro contrato. Para eso, haga clic en ejecutar e implementar transacciones a la izquierda

Luego haga clic en Implementar

Una vez que su contrato se haya implementado correctamente, podrá verlo en los contratos implementados.


Haga clic en la flecha hacia abajo para expandir y ver las diferentes funciones y mapeos dentro de nuestro contrato. Como configuramos la función addCandidate como privada, no podremos verla, pero aparte de eso, se mostrará todo.

Dado que ya agregamos 4 candidatos cuando implementamos el contrato con la ayuda del constructor, si presiona, candidatecount obtendrá 4 como resultado.

Ahora podemos acceder a la información del Candidato usando el id. Verá que el mapeo de candidatos se requerirá uint256como entrada.

Si da la entrada como 1, podrá ver los detalles de nuestro primer candidato. En nuestro caso, el primer candidato es Juan.

De igual forma, si desea obtener los datos de 
- Laura (segunda candidata) ingrese 2.
- Jazmin, Ingrese 3.
- Ramiro, Ingrese 4.

Ahora, de forma predeterminada, Remix IDE nos dará 10 cuentas de prueba con 100 ethers ficticios. Juguemos ahora con esas cuentas para comprender el funcionamiento de nuestro proyecto.

En la parte superior de la columna, verá ACCOUNT. Seleccione el cuadro desplegable para ver la lista de cuentas.

Ahora seleccione la segunda cuenta y emitamos nuestro voto. Vaya a nuestro deployed contractpresente en la parte inferior y vote por su candidato.

Diga si desea votar por Juan (Candidato 1), ingrese vote 1 porque la función de voto toma uint(candidateid) como entrada y en este caso, Godlin tiene 1 tiene el ID del candidato. Haga clic en realizar transacciones para ejecutar la función.


Vayamos a comprobar si nuestro voto está emitido. Para hacer eso tenemos que revisar el recuento de votos de Juan. Inicialmente, era 0, pero una vez que votamos, el recuento de votos se convertirá en 1.

Si vemos que el contador aumenta luego de realizar algún voto, el contrato está desplegado correctamente.
*Se debe tener en cuenta que solo se puede votar 1 vez por cuenta


