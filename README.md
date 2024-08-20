# Ki-nTree Docker Image

This is a docker image to run [Ki-nTree](https://github.com/sparkmicro/Ki-nTree) as a web service. It uses a python-lite base image, and pulls the latest version of Ki-nTree when building the image.

## Install

Please make sure you have docker installed.

1. Clone this repo (Or fork to a private repo & clone so you can commit your configuration)
2. (Optional) in docker-compose-yaml:  
   Change the listen port  
   Change the volume where config files are stored
3. Run `(sudo) docker compose up -d`
4. Wait until image is built
5. Ki-nTree will be accessible at `http://dockerhost:port` (If on local machine & default port: http://localhost:8754)


All the config files will be stored in the volume specified in docker-compose.yaml. You can configure your instance from the gui. 

## Configuration

Make sure to disable the "open browser after creating part" option in the user settings.



