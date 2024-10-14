/// This file is auto-generated by Scribble and shouldn't be edited directly.
/// Use --disarm prior to make any changes.
pragma solidity 0.7.0;

/// #if_succeeds {:msg ""} b == a + 1; 
contract Foo {
    uint internal a;
    uint internal b;

    function inc(uint x) public returns (uint y) {
        y = _original_Foo_inc(x);
        if (!(b == (a + 1))) {
            emit __ScribbleUtilsLib__56.AssertionFailed("000372:0066:000 0: ");
            assert(false);
        }
    }

    function _original_Foo_inc(uint x) internal returns (uint y) {
        return x + 1;
    }

    function inc2(uint x) virtual public returns (uint y) {
        y = _original_Foo_inc2(x);
        if (!(b == (a + 1))) {
            emit __ScribbleUtilsLib__56.AssertionFailed("000718:0066:000 0: ");
            assert(false);
        }
    }

    function _original_Foo_inc2(uint x) internal returns (uint y) {}
}

library __ScribbleUtilsLib__56 {
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

contract Bar is Foo {
    function inc2(uint x) override public returns (uint y) {
        y = _original_Bar_inc2(x);
        if (!(b == (a + 1))) {
            emit __ScribbleUtilsLib__56.AssertionFailed("001801:0066:000 0: ");
            assert(false);
        }
    }

    function _original_Bar_inc2(uint x) internal returns (uint y) {
        return x + 3;
    }

    function inc3(uint x) public pure returns (uint y) {
        return x + 5;
    }
}
