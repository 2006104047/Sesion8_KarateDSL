Feature: Registrar productos utilizando clases java

  Background:
    * url baseURL
    * def util = Java.type('util.Util')
    * def numAleatorioID = util.obtenerNumeroAleatorio()
    * def requestIdAleatorio = util.generarRequestId()

    @apibs-productos-Cert
  Scenario: Crear productos utilizando metodos java
    Given path pathProductos
    And header Request-ID = requestIdAleatorio
    And header Content-Type = 'application/json'
    And def reqBody = read('data/reqBody_Productos.json')
    And set reqBody.id = numAleatorioID
    And set reqBody.nombre = "Mochila PORTA"
    And set reqBody.precio = 200
    And request reqBody
    When method post
    Then status 201
    * print 'response data', response
