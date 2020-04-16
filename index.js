const express = require('express')
const teams = require('./teams')

const app = express()

app.get('/teams', (request, response) => {
  return response.send(teams)
})

app.get('/:teamId', (request, response) => {
  const { teamId } = request.params

  const findTeamId = teams.filter((team) => team.id === parseInt(teamId))

  return response.send(findTeamId)
})

app.all('*', (request, response) => {
  return response.sendStatus(404)
})

app.listen(6969, () => {
  console.log('listening on 6969....') // eslint-disable-line no-console
})
