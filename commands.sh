# create a virtual environment
python3 -m venv ~/.udacity-devops

# source it
source ~/.udacity-devops/bin/activate


# create webapp
make install
az webapp up --name devopsCIDIproject

# display logs in cloud shell
az webapp log tail