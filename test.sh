git submodule update --init

cd did-auth-jose
npm install
npm test
cd ../hub-sdk-js
npm install
npm test
cd ..

npm install nyc
npx nyc merge did-auth-jose/.nyc_output .nyc_output/did-auth-jose.json
npx nyc merge hub-sdk-js/.nyc_output .nyc_output/hub-sdk-js.json
npx nyc report