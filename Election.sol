pragma solidity ^0.5.11;
pragma experimental ABIEncoderV2;

contract Result {
    
    struct Question {
        string question;
        int result;
    }
    
    Question[] public questions;
    string public voters_hash;
    uint256 public relesed_at;
    
    function addQuestion(string memory _question, int _result) public {
        questions.push(Question(_question, _result));
    }
    
    function setVotersHash(string memory _voters_hash) public {
        voters_hash = _voters_hash;
    }
    
    function setReleaseAt(uint256 _relesed_at) public {
        relesed_at = _relesed_at;
    }
}

contract Votes {
    
    struct Vote {
        string vote_hash;
        uint256 cast_at;
    }
    
    Vote[] public votes;
    
    function addVote(string memory _vote_hash, uint256 _cast) public {
        votes.push(Vote(_vote_hash, _cast));
    }
    
}


contract Voters{
    
    struct Voter {
        string uuid;
        string name;
        string email;
    }
    
    Voter[] public voters;
    
    function addVoter(string memory _uuid, string memory _name, string memory _email) public {
        voters.push(Voter(_uuid, _name, _email));
    }
}

contract Election {
    
    string public uuid;
    string public name;
    string public cast_url;
    uint256 public created_at;
    uint256 public voting_starts;
    uint256 public voting_ends;
    
    struct Public_Key {
        string p;
        string q;
        string g;
        string y;
    }
    
    Public_Key public public_key;
    
    struct Question {
        string question;
        string[] anwsers;
    }
    
    Question[] public questions;
    
    Voters public voters_contract;
    Votes public votes_contract;
    Result public result_contract;
    
    constructor(string memory _uuid, string memory _name, string memory _cast_url, uint256 _created_at, uint256 _voting_starts, uint256 _voting_ends,
                string memory _p, string memory _q, string memory _g, string memory _y) public {
        uuid = _uuid;
        name = _name;
        cast_url = _cast_url;
        created_at = _created_at;
        voting_starts = _voting_starts;
        voting_ends = _voting_ends;
        public_key = Public_Key(_p, _q, _g, _y);
        voters_contract = new Voters();
        votes_contract = new Votes();
        result_contract = new Result();
    }
    
    function addQuestion(string memory _question, string[] memory _anwsers) public {
        questions.push(Question(_question, _anwsers));
    }
    
}
