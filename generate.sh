#!/bin/bash
# again shebang

# it will work also in the way touch 1 2 3
touch 1
touch 2
touch 3

# I think we want to create files under some path, so I would define it as variable
# MY_PATH='/home/my_user/bash/
# and next you can run command which creates files in next way: touch ${MY_PATH}/{1,2,3}
# {1,2,3} - in such way you can tell bash to do the same thing for all values in curly braces, it can be anything, not only numbers


# think about how would you create files is you need 100 of them?
# what other ways to create files? just google it
# by the way touch is doing more than just create file, google it :) 

