//SPDX-License-Identifier: UNLICENSED;
pragma solidity ^ 0.8.0;

contract FavMarvelcharacter{
    //Creating a struct
    struct Students{
        string name;
        uint age;
        string favMarvelCharacter;
    }
    //Creating an empty array of Students[]
    Students[] public student;
    //mapping the marvel string to name string
    mapping(string => string) public marveltoname;

    function addperson(string memory _name, uint _age, string memory _marvel) public{
        //the Students[] array is added with the name , age and marvel values
        student.push(Students(_name,_age,_marvel));
        //With
        marveltoname[_name] = _marvel;
    }

}