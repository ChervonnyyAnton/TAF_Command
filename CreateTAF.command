dotnet new sln 
&& mkdir TestCases 
&& mkdir Keywords 
&& mkdir DataProvider 
&& mkdir Helpers 
&& mkdir TestCases/Frontend 
&& mkdir TestCases/Backend 
&& mkdir TestCases/Frontend/TestBase 
&& mkdir TestCases/Frontend/SmokeTests 
&& mkdir TestCases/Backend/TestBase 
&& mkdir TestCases/Backend/SmokeTests 
&& mkdir Keywords/Frontend 
&& mkdir Keywords/Frontend/Keywords 
&& mkdir Keywords/Frontend/Provider 
&& mkdir Keywords/Backend 
&& mkdir DataProvider/Frontend 
&& mkdir DataProvider/Backend 
&& mkdir DataProvider/Frontend/PageObjects 
&& mkdir DataProvider/Frontend/DataObjects 
&& mkdir DataProvider/Backend/DataObjects 
&& mkdir DataProvider/Backend/ClientCredentials 
&& dotnet new xunit -o TestCases 
&& dotnet new classlib -o Keywords 
&& dotnet new classlib -o Helpers 
&& dotnet new classlib -o DataProvider 
&& rm TestCases/UnitTest1.cs 
&& rm Keywords/Class1.cs 
&& rm Helpers/Class1.cs 
&& rm DataProvider/Class1.cs 
&& touch TestCases/Frontend/TestBase/TestBase.cs 
&& touch TestCases/Frontend/SmokeTests/SmokeTest.cs 
&& touch TestCases/Backend/TestBase/TestBase.cs 
&& touch TestCases/Backend/SmokeTests/SmokeTest.cs 
&& touch Keywords/Frontend/Keywords/CoreKeywords.cs 
&& touch Keywords/Frontend/Provider/DriverProvider.cs 
&& touch Keywords/Backend/ClientProvider.cs 
&& touch Keywords/Backend/CoreKeywords.cs 
&& touch Keywords/Backend/Endpoints.cs 
&& touch Helpers/Helpers.cs 
&& touch DataProvider/Frontend/PageObjects/MainPageObjects.cs 
&& touch DataProvider/Frontend/DataObjects/TestData.cs 
&& touch DataProvider/Backend/DataObjects/Ping.cs 
&& touch DataProvider/Backend/ClientCredentials/ClientCredentials.cs 
&& dotnet add TestCases/TestCases.csproj reference Keywords/Keywords.csproj 
&& dotnet add TestCases/TestCases.csproj reference DataProvider/DataProvider.csproj 
&& dotnet add TestCases/TestCases.csproj reference Helpers/Helpers.csproj 
&& dotnet add Keywords/Keywords.csproj reference DataProvider/DataProvider.csproj 
&& dotnet add Keywords/Keywords.csproj reference Helpers/Helpers.csproj 
&& dotnet add Helpers/Helpers.csproj reference DataProvider/DataProvider.csproj 
&& dotnet add TestCases/TestCases.csproj package FluentAssertions 
&& dotnet add TestCases/TestCases.csproj package Microsoft.NET.Test.Sdk 
&& dotnet add TestCases/TestCases.csproj package RestSharp 
&& dotnet add TestCases/TestCases.csproj package Selenium.Support 
&& dotnet add TestCases/TestCases.csproj package Selenium.WebDriver 
&& dotnet add TestCases/TestCases.csproj package xunit 
&& dotnet add TestCases/TestCases.csproj package xunit.runner.visualstudio 
&& dotnet add Keywords/Keywords.csproj package RestSharp 
&& dotnet add KeyWords/KeyWords.csproj package Newtonsoft.json 
&& dotnet add KeyWords/KeyWords.csproj package Selenium.Support 
&& dotnet add KeyWords/KeyWords.csproj package Selenium.WebDriver 
&& dotnet add KeyWords/KeyWords.csproj package WebDriverManager 
&& dotnet add DataProvider/DataProvider.csproj package Newtonsoft.json 
&& dotnet add DataProvider/DataProvider.csproj package Selenium.WebDriver 
&& dotnet sln add **/*.csproj 
&& dotnet restore 
&& dotnet build
