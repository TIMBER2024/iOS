/// This file is auto-generated by Scribble and shouldn't be edited directly.
/// Use --disarm prior to make any changes.
pragma solidity 0.5.10;

/// #invariant {:msg ""} x>0;
contract Foo {
    struct vars1 {
        bool __scribble_check_invs_at_end;
    }

    struct vars2 {
        bool __scribble_check_invs_at_end;
    }

    struct vars3 {
        bool __scribble_check_invs_at_end;
    }

    int internal x = 1;

    function inc() public payable {
        vars1 memory _v;
        _v.__scribble_check_invs_at_end = !__ScribbleUtilsLib__89.isInContract();
        __ScribbleUtilsLib__89.setInContract(true);
        _original_Foo_inc();
        if (_v.__scribble_check_invs_at_end) __scribble_check_state_invariants();
        __ScribbleUtilsLib__89.setInContract(!_v.__scribble_check_invs_at_end);
    }

    function _original_Foo_inc() internal {
        x++;
    }

    function fail_int() internal {
        x = 0;
        _callsite_25(this, 0);
        x = 0;
        _callsite_38(this, 10000);
        x = 0;
        _callsite_54(this, 0, 10000);
    }

    function fail() public {
        vars2 memory _v;
        _v.__scribble_check_invs_at_end = !__ScribbleUtilsLib__89.isInContract();
        __ScribbleUtilsLib__89.setInContract(true);
        _original_Foo_fail();
        if (_v.__scribble_check_invs_at_end) __scribble_check_state_invariants();
        __ScribbleUtilsLib__89.setInContract(!_v.__scribble_check_invs_at_end);
    }

    function _original_Foo_fail() internal {
        fail_int();
    }

    function withdraw(uint _amount) public {
        vars3 memory _v;
        _v.__scribble_check_invs_at_end = !__ScribbleUtilsLib__89.isInContract();
        __ScribbleUtilsLib__89.setInContract(true);
        _original_Foo_withdraw(_amount);
        if (_v.__scribble_check_invs_at_end) __scribble_check_state_invariants();
        __ScribbleUtilsLib__89.setInContract(!_v.__scribble_check_invs_at_end);
    }

    function _original_Foo_withdraw(uint _amount) internal {
        (bool success, bytes memory retval) = _callsite_80(msg.sender, _amount, "");
        require(success);
    }

    /// Check only the current contract's state invariants
    function __scribble_Foo_check_state_invariants_internal() internal {
        if (!(x > 0)) {
            __ScribbleUtilsLib__89.assertionFailed("002292:0061:000 0: ");
            assert(false);
        }
    }

    /// Check the state invariant for the current contract and all its bases
    function __scribble_check_state_invariants() internal {
        __scribble_Foo_check_state_invariants_internal();
    }

    constructor() public {
        __ScribbleUtilsLib__89.setInContract(true);
        __scribble_check_state_invariants();
        __ScribbleUtilsLib__89.setInContract(false);
    }

    function _callsite_25(Foo receiver, uint256 _value) private {
        __scribble_check_state_invariants();
        __ScribbleUtilsLib__89.setInContract(false);
        receiver.inc.value(_value)();
        __ScribbleUtilsLib__89.setInContract(true);
    }

    function _callsite_38(Foo receiver, uint256 _gas) private {
        __scribble_check_state_invariants();
        __ScribbleUtilsLib__89.setInContract(false);
        receiver.inc.gas(_gas)();
        __ScribbleUtilsLib__89.setInContract(true);
    }

    function _callsite_54(Foo receiver, uint256 _value, uint256 _gas) private {
        __scribble_check_state_invariants();
        __ScribbleUtilsLib__89.setInContract(false);
        receiver.inc.gas(_gas).value(_value)();
        __ScribbleUtilsLib__89.setInContract(true);
    }

    function _callsite_80(address payable receiver, uint256 _value, bytes memory arg0) private returns (bool ret0, bytes memory ret1) {
        __scribble_check_state_invariants();
        __ScribbleUtilsLib__89.setInContract(false);
        (ret0, ret1) = receiver.call.value(_value)(arg0);
        __ScribbleUtilsLib__89.setInContract(true);
    }
}

library __ScribbleUtilsLib__89 {
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