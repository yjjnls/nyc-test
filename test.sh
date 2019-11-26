git submodule update --init

cd did-auth-jose
npm install
npm test
npx nyc merge .nyc_output ../.nyc_output/did-auth-jose.json
cd ../hub-sdk-js
npm install
npm test
npx nyc merge .nyc_output ../.nyc_output/hub-sdk-js.json
cd ..

npx nyc report