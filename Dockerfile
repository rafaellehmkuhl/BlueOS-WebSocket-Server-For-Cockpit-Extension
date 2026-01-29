FROM python:3.11-slim

ARG VERSION=0.0.0

# BlueOS Extension metadata
LABEL version="${VERSION}"
LABEL permissions='{\
  "HostConfig": {\
    "NetworkMode": "host"\
  }\
}'
LABEL authors='[\
    {\
        "name": "Rafael Araujo Lehmkuhl",\
        "email": "rafael.lehmkuhl93@gmail.com"\
    }\
]'
LABEL company='{\
  "about": "Blue Robotics - Underwater Robotics Made Accessible",\
  "name": "Blue Robotics",\
  "email": "rafael@bluerobotics.com"\
}'
LABEL readme="https://raw.githubusercontent.com/rafaellehmkuhl/BlueOS-WebSocket-Server-For-Cockpit-Extension/${VERSION}/README.md"
LABEL links='{\
  "website": "https://github.com/rafaellehmkuhl/BlueOS-WebSocket-Server-For-Cockpit-Extension",\
  "support": "https://github.com/rafaellehmkuhl/BlueOS-WebSocket-Server-For-Cockpit-Extension/issues"\
}'
LABEL type="example"
LABEL tags='[\
  "websocket",\
  "cockpit",\
  "data-lake"\
]'

WORKDIR /app

RUN pip install --no-cache-dir websockets

COPY server.py .

CMD ["python", "server.py"]
