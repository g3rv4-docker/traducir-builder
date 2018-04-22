git clone https://github.com/g3rv4/Traducir.git

cd Traducir/Traducir.Api
dotnet restore
cd ../

cd Traducir.Web
cp /var/package.json .
cp /var/package-lock.json .
npm install
cp -r node_modules /var/node_modules

cd ../
rm -rf Traducir
