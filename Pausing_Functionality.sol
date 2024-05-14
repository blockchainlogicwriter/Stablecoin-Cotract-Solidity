bool public paused;

modifier whenNotPaused() {
    require(!paused, "Contract paused");
    _;
}

function pause() external onlyOwner {
    paused = true;
    emit Paused();
}

function unpause() external onlyOwner {
    paused = false;
    emit Unpaused();
}

event Paused();
event Unpaused();
