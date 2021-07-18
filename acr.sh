#!/bin/bash
echo "Please log in using your Azure credentials to update the ACR image"
az login
az acr login --name salesengineering
docker tag railsgoat:latest salesengineering.azurecr.io/railsgoat:latest
docker push salesengineering.azurecr.io/railsgoat:latest
