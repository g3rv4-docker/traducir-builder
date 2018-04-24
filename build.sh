cd /var/app/Traducir.Api
dotnet build

cd /var/app/Traducir.Web
cp -r /var/node_modules node_modules
npm run build
