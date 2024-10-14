/// This file is auto-generated by Scribble and shouldn't be edited directly.
/// Use --disarm prior to make any changes.
pragma solidity 0.8.20;

/// #const uint256 H := 60 * 60;
///  #const uint256 D := H * 24;
contract A {
    /// Definition of user constant const uint256 H := (60 * 60)
    uint256 internal H_8_0;
    /// Definition of user constant const uint256 D := (H * 24)
    uint256 internal D_8_0;

    function testHD() public {
        _original_A_testHD();
        unchecked {
            if (!(D_8_0 == (H_8_0 * 24))) {
                emit __ScribbleUtilsLib__98.AssertionFailed("000553:0066:000 2: ");
                assert(false);
            }
        }
    }

    function _original_A_testHD() internal {}

    constructor() {
        /// Value assignment for const uint256 H := (60 * 60)
        H_8_0 = 60 * 60;
        /// Value assignment for const uint256 D := (H * 24)
        D_8_0 = H_8_0 * 24;
    }
}

/// #const uint256 H := 60 * 60;
///  #const uint256 D := H * 24;
///  #const uint256 W := D * 7;
contract B {
    /// Definition of user constant const uint256 H := (60 * 60)
    uint256 internal H_15_0;
    /// Definition of user constant const uint256 D := (H * 24)
    uint256 internal D_15_0;
    /// Definition of user constant const uint256 W := (D * 7)
    uint256 internal W_15_0;

    function testWHD() public {
        _original_B_testWHD();
        unchecked {
            if (!(((W_15_0 == (D_15_0 * 7)) && (D_15_0 == (H_15_0 * 24))) && (H_15_0 == (60 * 60)))) {
                emit __ScribbleUtilsLib__98.AssertionFailed("001528:0066:000 6: ");
                assert(false);
            }
        }
    }

    function _original_B_testWHD() internal {}

    constructor() {
        /// Value assignment for const uint256 H := (60 * 60)
        H_15_0 = 60 * 60;
        /// Value assignment for const uint256 D := (H * 24)
        D_15_0 = H_15_0 * 24;
        /// Value assignment for const uint256 W := (D * 7)
        W_15_0 = D_15_0 * 7;
    }
}

/// #define plus(uint x) uint = z + x;
///  #define plus2(uint Foo) uint = z + Foo;
///  #define plus3(uint plus2) uint = z + plus2;
///  #define double(uint z) uint = z+z;
///  #define quad(uint z) uint = let res := z+z in res + res;
///  #define quad2(uint z) uint = double(double(z));
contract UserDefinedFunctions {
    struct vars9 {
        uint256 res;
        uint256 let_0;
    }

    uint internal z;

    /// Implementation of user function define plus(uint256 x) uint256 = (z + x)
    function plus(uint256 x) internal view returns (uint256) {
        unchecked {
            return z + x;
        }
    }

    /// Implementation of user function define plus2(uint256 Foo) uint256 = (z + Foo)
    function plus2(uint256 Foo) internal view returns (uint256) {
        unchecked {
            return z + Foo;
        }
    }

    /// Implementation of user function define plus3(uint256 plus2) uint256 = (z + plus2)
    function plus3(uint256 plus21) internal view returns (uint256) {
        unchecked {
            return z + plus21;
        }
    }

    /// Implementation of user function define double(uint256 z) uint256 = (z + z)
    function double(uint256 z1) internal view returns (uint256) {
        unchecked {
            return z1 + z1;
        }
    }

    /// Implementation of user function define quad(uint256 z) uint256 = (let res := (z + z) in (res + res))
    function quad(uint256 z2) internal view returns (uint256) {
        vars9 memory _v;
        unchecked {
            return _v.let_0;
        }
        unchecked {
            _v.res = z2 + z2;
            _v.let_0 = _v.res + _v.res;
        }
    }

    /// Implementation of user function define quad2(uint256 z) uint256 = double(double(z))
    function quad2(uint256 z3) internal view returns (uint256) {
        unchecked {
            return double(double(z3));
        }
    }
}

contract EqEncoded {
    enum Other {
        A,
        B
    }

    struct Some {
        uint a;
    }

    uint256[3] internal a = [1, 2, 3];
    uint256[3] internal b = [1, 2, 3];
    uint256[3] internal c = a;
    uint256[] internal d = [4, 5, 6];
    uint256[] internal e = [4, 5, 6];
    uint256[] internal f = a;
    Some internal s = Some(1);

    function positive() public returns (bool RET_0) {
        RET_0 = _original_EqEncoded_positive();
        unchecked {
            if (!(__ScribbleUtilsLib__98.eq_encoded("abc", hex"616263"))) {
                emit __ScribbleUtilsLib__98.AssertionFailed("004447:0067:000 14: ");
                assert(false);
            }
            if (!(__ScribbleUtilsLib__98.eq_encoded(abi.encode(bytes2(0xffcc)), abi.encode(bytes2(0xffcc))))) {
                emit __ScribbleUtilsLib__98.AssertionFailed("004689:0067:000 15: ");
                assert(false);
            }
            if (!(__ScribbleUtilsLib__98.eq_encoded(abi.encode(0xC0FfEec0ffeeC0FfEec0fFEec0FfeEc0fFEe0000), abi.encode(0xC0FfEec0ffeeC0FfEec0fFEec0FfeEc0fFEe0000)))) {
                emit __ScribbleUtilsLib__98.AssertionFailed("004987:0067:000 16: ");
                assert(false);
            }
            if (!(__ScribbleUtilsLib__98.eq_encoded(abi.encode(uint256(512)), abi.encode(uint16(512))))) {
                emit __ScribbleUtilsLib__98.AssertionFailed("005224:0067:000 17: ");
                assert(false);
            }
            if (!(__ScribbleUtilsLib__98.eq_encoded(abi.encode(int256(-512)), abi.encode(int256(-512))))) {
                emit __ScribbleUtilsLib__98.AssertionFailed("005462:0067:000 18: ");
                assert(false);
            }
            if (!(__ScribbleUtilsLib__98.eq_encoded(abi.encode(true), abi.encode(true)))) {
                emit __ScribbleUtilsLib__98.AssertionFailed("005684:0067:000 19: ");
                assert(false);
            }
            if (!(__ScribbleUtilsLib__98.eq_encoded(abi.encode(false), abi.encode(false)))) {
                emit __ScribbleUtilsLib__98.AssertionFailed("005908:0067:000 20: ");
                assert(false);
            }
            if (!(__ScribbleUtilsLib__98.eq_encoded(abi.encode(Some(1)), abi.encode(s)))) {
                emit __ScribbleUtilsLib__98.AssertionFailed("006130:0067:000 21: ");
                assert(false);
            }
            if (!(__ScribbleUtilsLib__98.eq_encoded(abi.encode(Other.A), abi.encode(Other.A)))) {
                emit __ScribbleUtilsLib__98.AssertionFailed("006358:0067:000 22: ");
                assert(false);
            }
            if (!(__ScribbleUtilsLib__98.eq_encoded(abi.encode(a), abi.encode(b)))) {
                emit __ScribbleUtilsLib__98.AssertionFailed("006574:0067:000 23: ");
                assert(false);
            }
            if (!(__ScribbleUtilsLib__98.eq_encoded(abi.encode(d), abi.encode(e)))) {
                emit __ScribbleUtilsLib__98.AssertionFailed("006790:0067:000 24: ");
                assert(false);
            }
        }
    }

    function _original_EqEncoded_positive() internal returns (bool) {
        return true;
    }

    function negative() public returns (bool RET_0) {
        RET_0 = _original_EqEncoded_negative();
        unchecked {
            if (!(!__ScribbleUtilsLib__98.eq_encoded("abc", "abcd"))) {
                emit __ScribbleUtilsLib__98.AssertionFailed("007229:0067:000 25: ");
                assert(false);
            }
            if (!(!__ScribbleUtilsLib__98.eq_encoded("abc", "def"))) {
                emit __ScribbleUtilsLib__98.AssertionFailed("007430:0067:000 26: ");
                assert(false);
            }
            if (!(!__ScribbleUtilsLib__98.eq_encoded(hex"616263", hex"616264"))) {
                emit __ScribbleUtilsLib__98.AssertionFailed("007643:0067:000 27: ");
                assert(false);
            }
            if (!(!__ScribbleUtilsLib__98.eq_encoded(abi.encode(bytes2(0xffcc)), abi.encode(bytes2(0xffff))))) {
                emit __ScribbleUtilsLib__98.AssertionFailed("007886:0067:000 28: ");
                assert(false);
            }
            if (!(!__ScribbleUtilsLib__98.eq_encoded(abi.encode(0xDeaDbeefdEAdbeefdEadbEEFdeadbeEFdEaDbeeF), abi.encode(0xC0FfEec0ffeeC0FfEec0fFEec0FfeEc0fFEe0000)))) {
                emit __ScribbleUtilsLib__98.AssertionFailed("008185:0067:000 29: ");
                assert(false);
            }
            if (!(!__ScribbleUtilsLib__98.eq_encoded(abi.encode(uint256(512)), abi.encode(uint16(1024))))) {
                emit __ScribbleUtilsLib__98.AssertionFailed("008424:0067:000 30: ");
                assert(false);
            }
            if (!(!__ScribbleUtilsLib__98.eq_encoded(abi.encode(int256(-512)), abi.encode(int256(-1024))))) {
                emit __ScribbleUtilsLib__98.AssertionFailed("008664:0067:000 31: ");
                assert(false);
            }
            if (!(!__ScribbleUtilsLib__98.eq_encoded(abi.encode(true), abi.encode(false)))) {
                emit __ScribbleUtilsLib__98.AssertionFailed("008888:0067:000 32: ");
                assert(false);
            }
            if (!(!__ScribbleUtilsLib__98.eq_encoded(abi.encode(Some(2)), abi.encode(s)))) {
                emit __ScribbleUtilsLib__98.AssertionFailed("009111:0067:000 33: ");
                assert(false);
            }
            if (!(!__ScribbleUtilsLib__98.eq_encoded(abi.encode(Other.A), abi.encode(Other.B)))) {
                emit __ScribbleUtilsLib__98.AssertionFailed("009340:0067:000 34: ");
                assert(false);
            }
            if (!(!__ScribbleUtilsLib__98.eq_encoded(abi.encode(a), abi.encode(d)))) {
                emit __ScribbleUtilsLib__98.AssertionFailed("009557:0067:000 35: ");
                assert(false);
            }
            if (!(!__ScribbleUtilsLib__98.eq_encoded(abi.encode(c), abi.encode(f)))) {
                emit __ScribbleUtilsLib__98.AssertionFailed("009774:0067:000 36: ");
                assert(false);
            }
        }
    }

    function _original_EqEncoded_negative() internal returns (bool) {
        return true;
    }
}

library __ScribbleUtilsLib__98 {
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

    function eq_encoded(bytes memory a, bytes memory b) internal pure returns (bool) {
        if (a.length != b.length) return false;
        return keccak256(a) == keccak256(b);
    }
}

contract C is B {
    /// #if_succeeds old(W) == D * 7;
    constructor() {
        unchecked {
            if (!(W_15_0 == (D_15_0 * 7))) {
                emit __ScribbleUtilsLib__98.AssertionFailed("011087:0066:000 7: ");
                assert(false);
            }
        }
    }
}