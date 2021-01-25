# hello-world-app
Hello World API Service for tech11 test 

## Build the image 
`docker build -t <tagname>/hello-world-app . `

## Run your container off the image
`docker run -d -p 8000:8000  <tagname>/hello-world-app `

## Access the endpoint on
http://localhost:8000/hello_world
