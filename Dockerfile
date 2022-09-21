FROM jlesage/baseimage-gui:ubuntu-18.04
RUN apt update && apt install -y git wget && apt clean
RUN wget -qO- https://deb.nodesource.com/setup_16.x | bash - && apt install -y nodejs && apt clean
RUN npm install -g yarn
RUN git clone https://github.com/thomasnordquist/MQTT-Explorer.git /mqttexplorer
RUN apt install -y build-essential
RUN apt install -y libnss3
RUN cd /mqttexplorer && yarn
RUN cd /mqttexplorer && yarn build
RUN apt install -y libdbus-1-3
RUN apt install -y libgtk-3-0 libgtk-3-dev
RUN apt install -y libxss1 libasound2
RUN apt install -y xterm
#RUN cd /mqttexplorer && yarn start
COPY startapp.sh /startapp.sh
ENV APP_NAME="MQTT Explorer"
