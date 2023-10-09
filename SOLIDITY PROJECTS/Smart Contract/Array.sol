pragma solidity ^0.8.17;
contract demo{
    uint[5] public arr=[10,20,30,40,50];

function insert(uint index,uint _item) public{
    arr[index]=_item;
}

function returnArr(uint index) public view returns(uint){
    return arr[index];
}

function returnAllelements() public view returns(uint[5] memory) {
    return arr;
}
}

