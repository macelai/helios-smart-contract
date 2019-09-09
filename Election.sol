pragma solidity ^0.5.11;

contract HeliosElection {
    
    string uuid;
    string name;
    string cast_url;
    uint256 created_at;
    uint256 voting_starts;
    uint256 voting_ends;
    
    struct Public_Key {
        string p;
        string q;
        string g;
        string y;
    }
    
    Public_Key public_key;
    
    struct Question {
        string question;
        string[] anwsers;
    }
    
    Question[] questions;
    
    
    constructor() public {

    }
    
}
