sudo curl -L https://github.com/docker/compose/releases/download/1.21.2/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo apt install python-pip -y
cd /home/$USER/ProyectoDjango
sudo docker-compose run web django-admin.py startproject composeexample .
sudo mv /home/$USER/ProyectoDjango/settings.py /home/$USER/ProyectoDjango/composeexample/settings.py
