# Componentes del Proyecto

## TokenizeProperty (Contrato NFT)

### Propósito
Este contrato permite la creación y gestión de tokens no fungibles que representan propiedades.

### Funcionalidades
- Creación de nuevos tokens NFT asociados a propiedades.
- Transferencia de propiedad de un token a otro usuario.
- Consulta del propietario actual de un token NFT.

## CrossDestinationMinter (Contrato para la Cadena de Destino)

### Propósito
Este contrato se encarga de recibir solicitudes de minting desde otra cadena y realizar la minting correspondiente en la cadena local.

### Funcionalidades
- Minting de tokens NFT en la cadena local.
- Restricción para que solo el creador del contrato pueda realizar minting gratuito.

## CrossSourceMinter (Contrato para la Cadena de Origen)

### Propósito
Este contrato facilita la compra de tokens NFT en la cadena de origen utilizando la red Fuji de Chainlink para obtener tasas de cambio actualizadas.

### Funcionalidades
- Compra de tokens NFT utilizando ETH.
- Minting gratuito para el creador del contrato en la cadena de origen.
