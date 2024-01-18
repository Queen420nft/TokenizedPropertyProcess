# Proyecto de Tokenizacion de Activos Fisicos con tokens crosschain automatizados (NFT)

## Descripción del Proyecto
Este proyecto consiste en un conjunto de contratos inteligentes que facilitan la creación y transferencia de tokens no fungibles (NFT) entre diferentes cadenas de bloques utilizando la red Fuji de Chainlink como oráculo para obtener información sobre las tasas de cambio de criptomonedas.

## Componentes del Proyecto

[componentes_del_proyecto.md](componentes_del_proyecto.md)

<!--- include: componentes_del_proyecto.md -->

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

## Contratos de Prueba Desplegados

### Contrato Desplegado en la Cadena de Origen

#### 1.   Prueba Con 3 Tokens
   > *2 desplegados (1 Fuji, 1 Sepolia)*
   **TokenizePropertyCrossChainPriceNFT**
   - Dirección del Contrato[^1]: 
   0x8cc05f15f4f0ede1e1f813e1cea1552007e07e4e
   0x8Cc05f15f4f0ede1E1f813E1cEa1552007E07E4e
   - Estado: Activo
   - Propósito: Facilitar la compra de tokens NFT en la cadena de origen utilizando la red Fuji de Chainlink para obtener tasas de cambio actualizadas.

   **CrossDestinationMinter**
   - Dirección del Contrato[^1]: 
   0x242eedf22c038534ad957686fbf410ef035913cc
   0x242eEDF22C038534ad957686Fbf410Ef035913cC
   - Estado: Activo
   - Propósito: Facilitar la compra de tokens NFT en la cadena de origen utilizando la red Fuji de Chainlink para obtener tasas de cambio actualizadas.

### Contratos Desplegados en la Cadena de Destino (Fuji)

   1. **CrossSourceMinterFiji**
   - Dirección del Contrato[^1]: 0xD0ec883575B638D742c51cf38B2b0A5666980375
   - Estado: Activo
   - Propósito: Creación y gestión de tokens no fungibles que representan propiedades.

[^1]: Vinculado a los contratos con el mismo numero

## Tareas a Realizar

### Próximas Tareas de Desarrollo

- Implementar una interfaz gráfica de usuario (GUI) para facilitar la interacción con los contratos desplegados.
- Realizar pruebas exhaustivas de los contratos desplegados para garantizar su seguridad y funcionalidad.

## Procceso

### Commits

#### TryingCleanTPCCPNFT y anterior

- En el primer commit he creado unos contratos basicos para ir probando funcionalidades y poco a poco ir escalando el proyecto.
- En el segundo commit he eliminado los commits inecesarios en TryingCleanTPCCPNFT y he comprobado que he entendido correctamente el uso del github basico en Remix.
- Nota: *Cuando copiamos un contrato directamente de la parte de despliege de remix, este aparece distinto (ver en Contratos desplegados)*

#### TryingMarkdown&Github

- Estoy haciendo pruebas con Markdown, para dejar un README bonito y funcional.
- He vuelto a colgar los contratos, *hasta el momento MintOnSepolia funciona bien*
- Intentar integrar la funcion de pagar los tokens en LA RED PRINCIPAL para emprezar.


### Tareas finalizadas


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

