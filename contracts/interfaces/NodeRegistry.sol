pragma solidity ^0.4.18;

import "../Models.sol";

contract NodeRegistry {
    // State
    mapping (bytes32 => Models.Node) public nodes;
    mapping (address => bytes32[]) public nodesPerAccount;
    bytes32[] public nodesIndex;

    // Functions
    /*
     * @dev allows to register a new Node, returning a bytes32 nonce for the Node, if it doesn't exist already, in which case it will error out.
     * @param bytes8[] _networks - List of networks this Node supports (BTC, ETH, etc.).
     * @param string _endpoint - The endpoint information in multi addr format.
     */
    function register(bytes8[] _networks, string _endpoint) public returns(bytes32) {}
    /*
     * @dev Verify existence of a given Node nonce
     * @param bytes32 _nodeNonce - Nonce to verify against.
     */
    function isNode(bytes32 _nodeNonce) public view returns(bool) {}
    /*
     * @dev Verify ownership of a given Node.
     * @param address _possibleOwner - The possible owner of the given node we want to verify
     * @param bytes32 _nodeNonce - The nonce of the Node we want to verify
     */
    function isOwner(address _possibleOwner, bytes32 _nodeNonce) public view returns(bool) {}

    /*
     * @dev Returns the owner of the node
     * @param bytes32 _nodeNonce
     */
    function getNodeOwner(bytes32 _nodeNonce) public view returns(address) {}

    /*
     * @dev Returns a paginated list of the nodes owned by the account
     * @param address _owner
     * @param uint256 _page
     */
    function getOwnerNodes(address _owner, uint256 _page) public view returns (bytes32[]) {}

    /*
     * @dev Returns the Node information given the nonce
     * @param bytes32 _nodeNonce
     */
    function getNode(bytes32 _nodeNonce) public view returns (bytes32, address, bytes8[], string) {}

    /*
     * @dev Returns the length of the nodesIndex array
     */
    function getNodesIndexLength() public view returns (uint256) {}
}
