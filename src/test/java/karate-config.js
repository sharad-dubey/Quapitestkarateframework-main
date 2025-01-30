function fn() {
  var env = karate.env; // get system property 'karate.env'
  karate.log('karate.env system property was:', env);
  if (!env) {
    env = 'dev';
  }
  var config = {
   "baseUrl": "http://localhost:3100",
    env: env,
    myVarName: 'someValue'
  }
  return config;
}