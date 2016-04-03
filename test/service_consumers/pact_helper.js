'use strict';
import q from 'q';

import request from 'request'

// serviceProvider("fooProvider", () => {
//   honoursPactWith('fooConsumer', () => {
//     pactUri('pacts/fooconsumer-fooprovider.json')
//   })
// })

function switchMary(turnOn, done) {
  let urlPath = turnOn ? '/update/on' : '/update/off'
  let post_options = {
    url: 'http://localhost:5000' + urlPath,
    method: 'POST',
    headers: {
      'Content-Type': 'application/x-www-form-urlencoded'
    }
  }

  request(post_options, (error, req, resp) => {
    console.log('callback on request')
    done()
  })
}

provider_states_for('Animal Service', 'Zoo App', './pacts/zoo_app-animal_service.json', 'http://localhost:5000', (done) => {
  providerState('there is an alligator named Mary', (done) => {
    setUp( (done) => {
      console.log('setup111111')
      switchMary(true, done)
    })

    it( (done) => {
      done()
    })

    tearDown( (done) => {
      done()
    })
  })

  providerState('there is not an alligator named Mary', (done) => {
    let file = './pacts/zoo_app-animal_service.json'
    let options = {"pactUrl":'./pacts/zoo_app-animal_service.json', "baseUrl": 'http://localhost:5000'}

    setUp((done) => {
      console.log('setup22222')
      switchMary(false, done)
    })

    it( (done) => {
      done()
    })

    tearDown( (done) => {
      done()
    })

  })
})
