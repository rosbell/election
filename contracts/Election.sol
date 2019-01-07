pragma solidity ^0.5.0;

contract Election {

struct Candidate {
  uint id;
  string name;
  uint voteCount;
}

mapping(uint => Candidate) public candidates;

uint public candidatesCount;

constructor () public {
  addCandidate("Eggman");
  addCandidate("Catperson");

}

function addCandidate (string memory _name)private {
  candidatesCount++;
  candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
}

}