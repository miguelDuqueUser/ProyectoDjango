sudo apt-get update
sudo apt install docker.io docker-compose -y
sudo usermod -aG docker $USER
sudo curl -L https://github.com/docker/compose/releases/download/1.21.2/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo apt install python-pip -y
cd /home/$USER/ProyectoDjango
sudo docker-compose run web django-admin.py startproject composeexample .
sudo mv /home/$USER/ProyectoDjango/settings.py /home/$USER/ProyectoDjango/composeexample/settings.py
cd /home/$USER/ProyectoDjango/
sudo chown -R $USER:$USER .
sudo docker-compose up -d
