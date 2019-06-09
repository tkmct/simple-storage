pragma solidity >=0.4.21 <0.6.0;

contract KVS {
  mapping(string => uint256) store;

  event SetValue(string key, uint value);
  event GetValue(string key, uint value);

  function setValue(string memory key, uint value) public {
    store[key] = value;
    emit SetValue(key, value);
  }

  function getValue(string memory key) public returns(uint) {
    emit GetValue(key, store[key]);
    return store[key];
  }
}
