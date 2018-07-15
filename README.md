####Building the Docker Image
`docker build -t avorion-dedicated .`

####Creating a Galaxy & Starting a Server

These scripts will in turn call scripts in the `scripts` folder through the Docker container. Refer to [this](https://avorion.gamepedia.com/Setting_up_a_server#Setting_up_the_Server_.28Linux.29) page for an explanation of the command parameters.

`./create_galaxy <GALAXY_NAME> <ADMIN_STEAM_ID>`


`./start_server <GALAXY_NAME> <ADMIN_STEAM_ID>`