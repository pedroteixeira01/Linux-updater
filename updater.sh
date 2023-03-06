#!/bin/sh

echo "-------------------------------"
echo "|   Updating repository list   |"
echo "-------------------------------\n"

if (! apt update)
then
    echo "\nRepositories could not be updated.\n"
    exit 1
fi

echo "\n---------------------------------"
echo "|    List updated successfully   |"
echo "---------------------------------\n"

echo "\n-------------------------------------"
echo "|    Upgrading installed packages    |"
echo "-------------------------------------\n"

if (! apt full-upgrade -y)
then
    echo "\nPackages could not be updated.\n"
    exit 1
fi

echo "\n-------------------------------------------"
echo "|         Successful package update        |"
echo "-------------------------------------------\n"

echo "\n----------------------------------"
echo "|   Cleaning up unnecessary files   |"
echo "----------------------------------\n"

if (! (apt autoremove && apt autoclean && apt clean))
then
    echo "\nCan not remove unncessary files.\n"
    exit 1
fi

echo "\n All done! \n"

exit 0