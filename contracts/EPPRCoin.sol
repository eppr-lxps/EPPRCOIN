// Definir la version de Sol.
pragma solidity ^0.8.0;
// Importar otros contratos.
// import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";
// import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v4.4/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
// Crear contrato propio Y ( tenmemos una funcion constructor() )
contract EPPRCoin is ERC20 {

    constructor() public ERC20("EPPRCoin", "EPPR") {
        // MINT 1M de Tokens a el Wallet del Contrato.
        _mint(msg.sender, 1000000 * ( 10 ** uint256( decimals() ) ) );
    }

}