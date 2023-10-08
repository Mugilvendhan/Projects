


pragma solidity ^0.8.4;

contract lottery{

    address payable[] public players;
    address public manager;
    address payable public winner;

    constructor(){
    manager = msg.sender;
}
    function participate() public payable{
    
    require(msg.value==3 ether,"Ether not sufficient");
    players.push(payable(msg.sender));
    }


function getBalance() public view return(int){

require(manager==msg.sender,"You are not manager");
return address(this).balance;

}

function random() public viewreturns(uint){

return uint(keccak256(abi.encodedPacked(block.difficulty,
(block.timestamp,players.length)));
}

function pickwinner() public{
require(manager==msg.sender);
require(players.length>=3);]
uint r= random();

uint index =r%players.length;
winners=players[index];
winners.transfer(getBalance());
players=new address.payable[](0);
}

}
