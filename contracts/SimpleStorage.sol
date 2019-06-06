pragma solidity >=0.4.21 <0.6.0;

contract SimpleStorage {
  uint val;

  event SetValue(uint value);

  constructor() public {
    val = 0;
  }

  function setValue(uint value) public {
    val = value;
    emit SetValue(value);
  }

  function getValue() public view returns(uint) {
    return val;
  }
}
