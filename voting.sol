pragma solidity ^0.6.6;

contract Voting {
    // Define a struct to represent a candidate
    struct Candidate {
        uint id; // Unique identifier for the candidate
        string name; // Name of the candidate
        uint voteCount; // Number of votes the candidate has received
    }

    // Mapping to store candidate information
    mapping(uint => Candidate) public candidates;

    // Variable to keep track of the total number of candidates
    uint public candidatecount;

    // Mapping to track whether a user has voted or not
    mapping(address => bool) public citizen;

    // Constructor function to initialize the contract
    constructor() public {
        // Add initial candidates
        addCandidate("Juan");
        addCandidate("Laura");
        addCandidate("Jazmin");
        addCandidate("Ramiro");
    }

    // Function to add a new candidate
    function addCandidate(string memory _name) private {
        // Increment the candidate count
        candidatecount++;

        // Create a new candidate struct
        Candidate memory newCandidate = Candidate(candidatecount, _name, 0);

        // Add the new candidate to the mapping
        candidates[candidatecount] = newCandidate;
    }

    // Function to cast a vote for a candidate
    function vote(uint _candidateid) public {
        // Check if the user has already voted
        require(!citizen[msg.sender], "User has already voted");

        // Mark the user as having voted
        citizen[msg.sender] = true;

        // Increment the vote count for the selected candidate
        candidates[_candidateid].voteCount++;
    }
}
