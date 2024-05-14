function burn(uint256 _value) external returns (bool success) {
    require(balances[msg.sender] >= _value, "Insufficient balance");
    balances[msg.sender] -= _value;
    totalSupply -= _value;
    emit Transfer(msg.sender, address(0), _value);
    return true;
}
