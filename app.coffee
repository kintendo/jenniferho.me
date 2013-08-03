# sends index.html to each connection
# ==============================================================================
http = require 'http'
fs = require 'fs'
express = require('express')
app = express()
server = http.createServer(app)    

app.get '/', (req, res) ->
    res.sendfile(__dirname + '/Home.html')

app.use('/', express.static(__dirname))


server.listen process.env.PORT