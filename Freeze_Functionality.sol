mapping(address => bool) public frozenAccounts;

function freezeAccount(address _account) external onlyOwner {
    frozenAccounts[_account] = true;
    emit FrozenAccount(_account);
}

function unfreezeAccount(address _account) external onlyOwner {
    frozenAccounts[_account] = false;
    emit UnfrozenAccount(_account);
}

event FrozenAccount(address indexed account);
event UnfrozenAccount(address indexed account);
