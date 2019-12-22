set -e

cd /var/app/Traducir.Web
dotnet build -c Release

cd /var/app/Traducir.Web/Scripts
tslint --project .
tsc
