#!/bin/bash
gh auth login --with-token
mkdir SkafTest
cd SkafTest/

# Init Dotnet project
git init
dotnet new sln
dotnet new webapi -o SkafTest.API -minimal --no-restore
dotnet new xunit -o SkafTest.Tests --no-restore
dotnet sln add SkafTest.API SkafTest.Tests

git add -A
git commit -m "Initial commit with Skaf"
git branch -M main

gh repo create Yeseh/SkafTest --public
git remote add origin "https://yeseh:$GH_TOKEN@github.com/Yeseh/SkafTest"

git push -u origin main
