# Proyecto de Tokenizacion de Activos Fisicos con tokens crosschain automatizados (NFT)

## Descripción del Proyecto
Este proyecto consiste en un conjunto de contratos inteligentes que facilitan la creación y transferencia de tokens no fungibles (NFT) entre diferentes cadenas de bloques utilizando la red Fuji de Chainlink como oráculo para obtener información sobre las tasas de cambio de criptomonedas.

## Componentes del Proyecto

### TokenizeProperty (Contrato NFT)

#### Propósito
Este contrato permite la creación y gestión de tokens no fungibles que representan propiedades.

#### Funcionalidades
- Creación de nuevos tokens NFT asociados a propiedades.
- Transferencia de propiedad de un token a otro usuario.
- Consulta del propietario actual de un token NFT.

### CrossDestinationMinter (Contrato para la Cadena de Destino)

#### Propósito
Este contrato se encarga de recibir solicitudes de minting desde otra cadena y realizar la minting correspondiente en la cadena local.

#### Funcionalidades
- Minting de tokens NFT en la cadena local.
- Restricción para que solo el creador del contrato pueda realizar minting gratuito.

### CrossSourceMinter (Contrato para la Cadena de Origen)

#### Propósito
Este contrato facilita la compra de tokens NFT en la cadena de origen utilizando la red Fuji de Chainlink para obtener tasas de cambio actualizadas.

#### Funcionalidades
- Compra de tokens NFT utilizando ETH.
- Minting gratuito para el creador del contrato en la cadena de origen.

## Requisitos y Dependencias
- El proyecto utiliza la red Fuji de Chainlink para obtener información de tasas de cambio.
- Se deben desplegar los contratos en las cadenas correspondientes.
- Se necesita una configuración adecuada de Chainlink y LinkToken para la red Fuji.

## Contratos de Prueba Desplegados

### Contratos Desplegados en la Cadena de Destino (Fuji)

1. **CrossDestinationMinterFiji**
   - Dirección del Contrato: 
   - Estado: Activo
   - Propósito: Creación y gestión de tokens no fungibles que representan propiedades.


### Contrato Desplegado en la Cadena de Origen

1. **CrossSourceMinter**
   - Dirección del Contrato: 0x5c8C9b3f71C682b7f542E258f9db6F246da28236
   - Estado: Activo
   - Propósito: Facilitar la compra de tokens NFT en la cadena de origen utilizando la red Fuji de Chainlink para obtener tasas de cambio actualizadas.

## Tareas a Realizar

### Próximas Tareas de Desarrollo

- Implementar una interfaz gráfica de usuario (GUI) para facilitar la interacción con los contratos desplegados.
- Realizar pruebas exhaustivas de los contratos desplegados para garantizar su seguridad y funcionalidad.

## Información para Aprender

### Recursos de Aprendizaje Recomendados

- Documentación de Solidity para el desarrollo de contratos inteligentes.
- Tutoriales sobre la integración de Chainlink en contratos inteligentes.
- Cursos sobre la creación y gestión de tokens no fungibles (NFT) en cadenas de bloques.

## Tecnologías y Herramientas Utilizadas

### Tecnologías y Lenguajes de Programación

- Solidity: Lenguaje utilizado para el desarrollo de contratos inteligentes.
- JavaScript: Utilizado para la creación de interfaces de usuario y la interacción con los contratos desplegados.

### Herramientas y Frameworks

- Truffle: Framework utilizado para el desarrollo, prueba y despliegue de contratos inteligentes.
- Remix IDE: Entorno integrado de desarrollo utilizado para escribir, probar y desplegar contratos inteligentes.
- MetaMask: Extensión de navegador utilizada para interactuar con aplicaciones descentralizadas (dApps) y cadenas de bloques.

## Contribuciones y Problemas
Si encuentras problemas o deseas contribuir al proyecto, por favor, crea un issue en el repositorio.
