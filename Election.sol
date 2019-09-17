pragma solidity ^0.5.11;

contract Result {
    
    struct Question {
        string question;
        int result;
    }
    
    Question[] questions;
    string voters_hash;
    uint256 relesed_at;
}

contract Votes {
    
    struct Vote {
        string vote_hash;
        string cast_at;
    }
    
    Votes[] votes;
    
}


contract Voters{
    
    struct Voter {
        string uuid;
        string name;
        string email;
    }
    
    Voters[] voters;
}

contract Election {
    
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
    
    struct Private_Key {
        string p;
    }
    
    Private_Key private_key;
    Public_Key public_key;
    
    struct Question {
        string question;
        string[] anwsers;
    }
    
    Question[] questions;
    
    Voters voters_contract;
    Votes votes_contract;
    Result result_contract;
    
}
