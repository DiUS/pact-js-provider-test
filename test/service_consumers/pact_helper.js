'use strict';
import q from 'q';
import rp from 'request-promise'

import Pact from 'pact-js-provider'
let pact = new Pact()

// pact.serviceProvider("fooProvider", () => {
//   honoursPactWith('fooConsumer', () => {
//     pactUri('pacts/fooconsumer-fooprovider.json')
//   })
// })

function switchMary(deferred, turnOn) {
  console.log('switchMary %s', turnOn)
  console.log(deferred)

  let urlPath = turnOn ? 'update/on' : '/update/off'
  let post_options = {
    url: 'http://localhost:5000' + urlPath,
    method: 'POST',
    headers: {
      'Content-Type': 'application/x-www-form-urlencoded'
    }
  }
  deferred.promise
    .then(rp(post_options))
    .then(deferred.resolve)

  return deferred
}

pact.provider_states_for('Zoo App', () => {

  pact.providerState('a request for an alligator', {
    file: './pacts/zoo_app-animal_service.json',
    setup: (deferred) => {
      console.log('setup1')

      switchMary(deferred, true)
    },

    options: {"pactUrl":'./pacts/zoo_app-animal_service.json',
        "baseUrl": 'http://localhost:5000'},


    teardown: (deferred) => {
      console.log('teardown')
      return deferred.promise
    }

  })

  pact.providerState('a request for not found an alligator', {
    file: './pacts/zoo_app-animal_service.json',
    options: {"pactUrl":'./pacts/zoo_app-animal_service.json',
        "baseUrl": 'http://localhost:5000'},

    setup: (deferred) => {
      console.log('setup2s')
      switchMary(deferred, false)
    },

    teardown: (deferred) => {
      console.log('teardown')
      return deferred.promise
    }
  })

}).verify()

