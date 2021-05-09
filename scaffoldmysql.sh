#!/bin/bash

if [[ $# -ne 3 ]]; then

    echo "Usage: ./scaffoldmysql name_of_project username passwd"
    echo "     Where: name_of_project is both project name,"
    echo "            username is user in mysql database,"
    echo "            passwd is the user's password in mysql database,"
    echo "            and name of MySql database name to be scaffolded."
    exit 2
fi

echo "Creating folder "$1" for project $1."
echo ""
if [[ -d ./$1 ]]; then

    echo "Folder already exists, quitting."
    exit 1
fi
mkdir $1
sleep 3

echo ""
echo "Moving to project folder..."
echo ""
cd $1
pwd
sleep 3

echo "Building base console app..."
echo ""
dotnet new console
echo "Creating Data Context folder..."
mkdir Data
echo "Creating Data Models folder..."
echo ""
mkdir Models
sleep 3

echo "Adding EF Core packages plus one for MySQL..."
echo ""
echo "First, adding EntityFrameworkCore Tools..."
echo ""
dotnet add package Microsoft.EntityframeworkCore.Tools
wait
sleep 3
echo "Second, adding EntityFrameworkCore Design..."
echo ""
dotnet add package Microsoft.EntityframeworkCore.Design
wait
sleep 3
echo "Finally, adding MySql EntityFrameworkCore Provider/Connector..."
echo ""
dotnet add package MySql.EntityFrameworkCore
wait
sleep 3

echo "Restore project...."
echo ""
dotnet restore
wait
sleep 3

echo "Scaffold database into project...."
echo ""

dotnet ef dbcontext scaffold "Server=localhost;Database="$1";Uid="$2";Pwd="$3";" MySql.EntityFrameworkCore --context-dir Data --output-dir Models
wait
sleep 3

echo "Restore project again and open VS Code...."
dotnet restore
sleep 3

code .
