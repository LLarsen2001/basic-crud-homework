# README
 Users api 

  http://localhost:3001/users
  get '/users' = users controller#index => list of users

  http://localhost:3001/users/1
  get'/users/:id' => user controller#show => one user

  http://localhost:3001/users
  post '/users' *need to send item data => users controller#create => create user
 
 http://localhost:3001/users/1
  put'/users/:id' *need to send user data => user controller#update => update an user

  http://localhost:3001/users/1
  delete'/users/:id' => user controller#destroy => deletes an user