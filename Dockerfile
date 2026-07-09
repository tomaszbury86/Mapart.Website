# Obraz bazowy do uruchamiania aplikacji ASP.NET Core
FROM mcr.microsoft.com/dotnet/aspnet:10.0

WORKDIR /app

# Otwórz porty aplikacji
EXPOSE 8080
EXPOSE 8081

# Skopiuj opublikowane pliki (dotnet publish) do obrazu
COPY ./publish .

# Domyœlne polecenie uruchamiaj¹ce aplikacjê
ENTRYPOINT ["dotnet", "Mapart.WebSite.Server.dll"]
