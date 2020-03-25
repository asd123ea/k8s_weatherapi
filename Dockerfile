FROM mcr.microsoft.com/dotnet/core/aspnet:3.0

WORKDIR /usr/src/app

EXPOSE 80

COPY /out .
ENTRYPOINT ["dotnet", "weatherapi.dll"]