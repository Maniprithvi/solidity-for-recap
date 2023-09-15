
pragma solidity >=0.5.2;

contract employerRegProcess {
    uint reqDigits =18;
    uint regModulus = 10**reqDigits;

// initiating input objcet  model
    struct Employer {
        string name;
        uint age;
        string role;
    }
// initiated for obj model from public to reg process
    Employer[] public employers;

}