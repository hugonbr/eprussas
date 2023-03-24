import React, { useState, useEffect } from 'react'
import axios from 'axios'

function App() {
  const [users, setUsers] = useState([])
  const [name, setName] = useState('')
  const [email, setEmail] = useState('')

  useEffect(() => {
    getUsers()
  }, [])

  const getUsers = async () => {
    const response = await axios.get('http://localhost:3000/users')
    setUsers(response.data)
  }

  const createUser = async () => {
    const user = { name, email }
    const response = await axios.post('http://localhost:3000/users', user)
    setUsers([...users, response.data])
    setName('')
    setEmail('')
  }

  const deleteUser = async (id) => {
    await axios.delete(`/users/${id}`)
    setUsers(users.filter(user => user.id !== id))
  }

  return (
    <div>
      <h1>Users</h1>
      <ul>
        {users.map(user => (
          <li key={user.id}>
            {user.name} - {user.email}
            <button onClick={() => deleteUser(user.id)}>Delete</button>
          </li>
        ))}
      </ul>
      <h2>Create User</h2>
      <form onSubmit={createUser}>
        <input type="text" value={name} placeholder="Name" onChange={(e) => setName(e.target.value)} />
        <input type="email" value={email} placeholder="Email" onChange={(e) => setEmail(e.target.value)} />
        <button type="submit">Create</button>
      </form>
    </div>
  )
}

export default App
