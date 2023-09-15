
pragma solidity >=0.5.2;

contract employeeRegProcess {
    uint reqDigits =18;
    uint regModulus = 10**reqDigits;

// initiating input objcet  model
    struct Employe {
        string name;
        uint id;
        string role;
    }
// initiated for array model from public to reg process
    Employe[] public employees;

// creating Function
function createEmployee (string _name, uint _id) {
    // in this we push the reg info into employers array 
        employees.push(Employe(_name, _id));
    }
// in this function we generates random numrs for Id
    function generateId(string _str) private view  returns(uint){
// here im created random id with ethereum Build in fnction >keccak256 and their mothod of abi.encodePacked method
// and convert the random numr into 18 digit of regModulus
        uint rand = uint(keccak256(abi.encodePacked(_str)));
        return rand % regModulus;

    }

    // in this function i generated function to create a user function using geneateid,createEmployer 
    // to initiate the over all reg data getting process
    function createRandomEmployee(string _name) public {
        uint randomId = generateId(_name);
        createEmployee(_name ,randomId);
    }
}