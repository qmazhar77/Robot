*** Test Cases ***

forloop1
    : FOR   ${i}    in Range    1   10
    \   log to console  ${i}

Forloop2
    : FOR   ${i}    IN   1  2  3  4  5  6  7  8
    \   log to console    ${i}
    \   exit for loop if    ${i}==3

ForLoop3withList
    @{items}    create list     1   2   3   4   5
    : FOR   ${i}    IN  @{items}
    \   log to console    ${i}

ForLoop4
    : FOR   ${i}    in  Jhon    David   Smith   scott
    \   log to console  ${i}

ForLoop5
    @{namelist}     create list     Jhon    David   Smith   scott
    : FOR   ${i}    in  @{namelist}
    \   log to console  ${i}

ForLoopwithExit
    @{items}    create list     1   2   3   4   5
    : FOR   ${i}    IN      @{items}
    /   log to console    ${i}
    /   exit for loop if    ${i}==3
