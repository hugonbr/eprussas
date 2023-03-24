const express = require('express')
const app = express()

app.use(express.json())

// In-memory storage for data
let users = []

// Get all users
app.get('/users', (req, res) => {
  res.send(users)
})

// Get user by id
app.get('/users/:id', (req, res) => {
  const user = users.find(user => user.id === parseInt(req.params.id))
  if (!user) return res.status(404).send('User not found')
  res.send(user)
})

// Create a new user
app.post('/users', (req, res) => {
  const user = {
    id: users.length + 1,
    name: req.body.name,
    email: req.body.email
  }
  users.push(user)
  res.send(user)
})

// Update user by id
app.put('/users/:id', (req, res) => {
  const user = users.find(user => user.id === parseInt(req.params.id))
  if (!user) return res.status(404).send('User not found')
  user.name = req.body.name
  user.email = req.body.email
  res.send(user)
})

// Delete user by id
app.delete('/users/:id', (req, res) => {
  const userIndex = users.findIndex(user => user.id === parseInt(req.params.id))
  if (userIndex === -1) return res.status(404).send('User not found')
  users.splice(userIndex, 1)
  res.send('User deleted successfully')
})

const port = 3000
app.listen(port, () => {
  console.log(`Server is listening on port ${port}`)
})
