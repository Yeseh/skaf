#!/bin/bash
gh auth login --with-token
gh repo create Yeseh/SkafTest --public
gh repo clone Yeseh/SkafTest
cd SkafTest/

# Init Dotnet project
dotnet new sln
dotnet new webapi -o SkafTest.API -minimal --no-restore
dotnet new xunit -o SkafTest.Tests --no-restore
dotnet sln add SkafTest.API SkafTest.Tests

git commit -am "Initial commit with Skaf"
git branch -M main
git push -u origin main
