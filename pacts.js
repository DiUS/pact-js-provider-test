import {runPact, runPacts} from 'pact-js'

//runPact('./test/service_consumers/pact_helper')

runPact('./test/service_consumers/pact_helper', './test/service_consumers/pact_helper2')

