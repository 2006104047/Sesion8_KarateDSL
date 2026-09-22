function fn() {

    var env = karate.env || 'dev';
    Karate.log('Ambiente de ejecucion:' +env);

var config = {};

if (env == 'dev'){
 config.baseURL: 'http://localhost:3000';
 config.pathProductos: '/productos'

} else if (env =='cert'){
 config.baseURL = 'http://localhost:3000';
 config.pathProductos = '/productos'

} else {
    Karate.fail('Ambiente no soportado:' + env);
}

return config;

}


