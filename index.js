const express = require('express')
const bodyParser = require('body-parser')
const { getAllTeams, getTeamById, addNewTeam } = require('./controllers/teams')

const app = express()

app.get('/teams', getAllTeams)

app.get('/:teamId', getTeamById)

app.post('/', bodyParser.json(), addNewTeam)

app.all('*', (request, response) => {
  return response.sendStatus(404)
})

app.listen(6969, () => {
  console.log('listening on 6969....') // eslint-disable-line no-console
})
