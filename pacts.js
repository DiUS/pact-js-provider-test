import {runPact, runPacts} from 'pact-js-provider'

//runPact('./test/service_consumers/pact_helper')

runPact('./test/service_consumers/pact_helper', './test/service_consumers/pact_helper2')

