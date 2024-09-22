const express = require('express')
const app = express()

app.get('/', (req, res) => {
  res.send('<h1>Eu amo Docker!</h1>')
})

app.listen(process.env.PORT, () => {
  console.log('Servidor rodando na porta 3000')
})
