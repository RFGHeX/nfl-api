const teams = require('../teams.js')

const getAllTeams = (request, response) => {
  return response.send(teams)
}

const getTeamById = (request, response) => {
  const { teamId } = request.params

  const findTeamId = teams.filter((team) => team.id === parseInt(teamId))

  return response.send(findTeamId)
}

const addNewTeam = (request, response) => {
  const {
    id, location, mascot, abbreviation, conference, division,
  } = request.body

  if (!id || !location || !mascot || !abbreviation || !conference || !division) {
    return response.status(400).send('Please make sure all fields are filled')
  }

  const newTeam = {
    id, location, mascot, abbreviation, conference, division,
  }

  teams.push(newTeam)

  return response.status(201).send(newTeam)
}

module.exports = { getAllTeams, getTeamById, addNewTeam }
