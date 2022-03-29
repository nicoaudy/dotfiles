#!/bin/bash

available=$(brew list --formula -1 | egrep '^php@|^php$')

syntax () {
	echo "SYNTAX: $0 <version>"
	echo ""
	echo -n "<version> needs to be one of: "
	echo $available
	echo ""
	echo "Choose the latest version of PHP by naming 'php' as the version"
	exit 2
}

# check if enough arguments
if [ "$#" -ne 1 ]; then
	syntax
fi

version=$(echo "${available}" | grep "${1}" | head -n 1)

# check if valid version
if [[ -z "$version" ]]; then
	syntax
fi

# do it
echo "Will use version $version"

# now change to the requested version
if which valet >/dev/null; then
	valet use $version --force
fi

if which composer >/dev/null; then
	composer global update
fi