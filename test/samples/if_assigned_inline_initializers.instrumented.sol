/// This file is auto-generated by Scribble and shouldn't be edited directly.
/// Use --disarm prior to make any changes.
pragma solidity 0.8.7;

contract Base {
    struct S {
        uint[] arr;
        uint[][] arr2;
    }

    struct vars3 {
        uint256 old_0;
    }

    uint internal x;
    uint[] internal arr = [1];
    uint[][] internal arr2 = [[1, 2], [3, 4]];
    S internal s = S({arr: arr, arr2: arr2});

    constructor() {
        Base_s_inline_initializer();
        Base_arr2_inline_initializer();
        Base_arr_inline_initializer();
        Base_x_uint256_assign(1);
    }

    function Base_arr_inline_initializer() internal {
        unchecked {
            if (!(arr.length > 0)) {
                emit __ScribbleUtilsLib__80.AssertionFailed("000726:0066:000 1: ");
                assert(false);
            }
        }
    }

    function Base_arr2_inline_initializer() internal {
        unchecked {
            if (!(arr2.length > 0)) {
                emit __ScribbleUtilsLib__80.AssertionFailed("000985:0066:000 3: ");
                assert(false);
            }
        }
    }

    function Base_s_inline_initializer() internal {
        unchecked {
            if (!(s.arr.length > 0)) {
                emit __ScribbleUtilsLib__80.AssertionFailed("001242:0066:000 6: ");
                assert(false);
            }
        }
    }

    function Base_x_uint256_assign(uint256 ARG0) internal returns (uint256 RET0) {
        vars3 memory _v;
        unchecked {
            _v.old_0 = x;
        }
        x = ARG0;
        RET0 = x;
        unchecked {
            if (!(x >= _v.old_0)) {
                emit __ScribbleUtilsLib__80.AssertionFailed("001644:0066:000 0: ");
                assert(false);
            }
        }
    }

    function Base_arr_ptr_arr_uint8_1_memory_assign(uint8[1] memory ARG1) internal returns (uint256[] storage RET1) {
        arr = ARG1;
        RET1 = arr;
        unchecked {
            if (!(arr.length > 0)) {
                emit __ScribbleUtilsLib__80.AssertionFailed("002005:0066:000 1: ");
                assert(false);
            }
        }
    }

    function Base_arr2_ptr_arr_ptr_arr_uint8_1_memory_2_memory_assign(uint8[1][2] memory ARG2) internal returns (uint256[][] storage RET2) {
        arr2 = ARG2;
        RET2 = arr2;
        unchecked {
            if (!(arr2.length > 0)) {
                emit __ScribbleUtilsLib__80.AssertionFailed("002392:0066:000 3: ");
                assert(false);
            }
        }
    }
}

library __ScribbleUtilsLib__80 {
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

contract Child is Base {
    constructor() {
        Base_x_uint256_assign(4);
        Base_arr_ptr_arr_uint8_1_memory_assign([4]);
        Base_arr2_ptr_arr_ptr_arr_uint8_1_memory_2_memory_assign([[1], [2]]);
        s.arr = arr;
        s.arr2 = arr2;
    }
}
