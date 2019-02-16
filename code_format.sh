#!/bin/bash

if [ "${1}" = "" ]; then
    echo "Please input a path or a file name."
    exit
fi

format() {
    echo ${files} | xargs dos2unix

    for filename in ${files} ;do
        filename1=${filename}.tab
        echo "tab --> 4 space" ${filename}
        sed 's/\t/    /g' ${filename} >${filename1}

        echo "delete the space of end line" ${filename}
        sed 's/[ \t]*$//g' ${filename1} >${filename}

        rm -f ${filename1}
    done
}


if [ -d "${1}" ]; then
    rules=`cat format_list.conf | xargs`

    for rule in ${rules} ; do
        files="`find ${1} -name '*.'${rule}''`"

        if [ "${files}" != "" ]; then
            format
        fi
    done
else
    files="${1}"
    format
fi

exit

