pragma solidity >=0.4.21 <0.6.0;

contract SimpleStorage {
  uint val;

  event StoreValue(uint value);

  constructor() public {
    val = 0;
  }

  function setValue(uint value) public {
    val = value;
    emit StoreValue(value);
  }

  function getValue() public view returns(uint) {
    return val;
  }
}
