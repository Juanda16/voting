
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
