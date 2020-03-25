FROM mcr.microsoft.com/dotnet/core/aspnet:3.0

# Create app directory
# This is directive for CMD command to be executed.
WORKDIR /app
# Copy only the deployment artifacts
COPY ./linux-64 .

ENTRYPOINT ["dotnet", "weatherapi.dll"]