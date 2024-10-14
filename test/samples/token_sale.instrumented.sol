/// This file is auto-generated by Scribble and shouldn't be edited directly.
/// Use --disarm prior to make any changes.
pragma solidity 0.5.17;

contract TokenSale {
    mapping(address => uint256) public balanceOf;
    uint256 internal constant PRICE_PER_TOKEN = 1 ether;

    constructor() public payable {
        require(msg.value == 1 ether);
    }

    function isComplete() public view returns (bool) {
        return address(this).balance < 1 ether;
    }

    function buy(uint256 numTokens) public payable {
        _original_TokenSale_buy(numTokens);
        if (!(address(this).balance >= 1)) {
            __ScribbleUtilsLib__88.assertionFailed("000621:0063:000 0: P0");
            assert(false);
        }
    }

    function _original_TokenSale_buy(uint256 numTokens) internal {
        require(msg.value == (numTokens * PRICE_PER_TOKEN));
        balanceOf[msg.sender] += numTokens;
    }

    function sell(uint256 numTokens) public {
        _original_TokenSale_sell(numTokens);
        if (!(address(this).balance >= 1)) {
            __ScribbleUtilsLib__88.assertionFailed("001057:0063:000 1: P1");
            assert(false);
        }
    }

    function _original_TokenSale_sell(uint256 numTokens) internal {
        require(balanceOf[msg.sender] >= numTokens);
        balanceOf[msg.sender] -= numTokens;
        msg.sender.transfer(numTokens * PRICE_PER_TOKEN);
    }
}

library __ScribbleUtilsLib__88 {
    event AssertionFailed(string message);

    event AssertionFailedData(int eventId, bytes encodingData);

    function assertionFailed(string memory arg_0) internal {
        emit AssertionFailed(arg_0);
    }

    function assertionFailedData(int arg_0, bytes memory arg_1) internal {
        emit AssertionFailedData(arg_0, arg_1);
    }

    function isInContract() internal returns (bool res) {
        assembly {
            res := sload(0x5f0b92cf9616afdee4f4136f66393f1343b027f01be893fa569eb2e2b667a40c)
        }
    }

    function setInContract(bool v) internal {
        assembly {
            sstore(0x5f0b92cf9616afdee4f4136f66393f1343b027f01be893fa569eb2e2b667a40c, v)
        }
    }
}
