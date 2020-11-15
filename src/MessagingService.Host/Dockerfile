FROM mcr.microsoft.com/dotnet/sdk:5.0 AS messaging-service-build-env
WORKDIR /App

COPY *.csproj ./
RUN dotnet restore

COPY . ./
RUN dotnet publish -c Debug -o out

FROM mcr.microsoft.com/dotnet/sdk:5.0
WORKDIR /App
COPY --from=messaging-service-build-env /App/out .
ENTRYPOINT ["dotnet", "MessagingService.Host.dll"]