@@ -0,0 +1,15 @@
from cloudlink import server
from cloudlink.server.protocols import clpv4

# 1. Erstelle das Server-Objekt
cl_server = server()

# 2. Aktiviere das CloudLink V4 Protokoll (wichtig für das TurboWarp AddOn)
clpv4_protocol = clpv4(cl_server)

# 3. Starte den Server
# Wichtig: "0.0.0.0" ist nötig, damit Fly.io von außen zugreifen kann.
# Port 3000 muss mit deinem Dockerfile und deiner fly.toml übereinstimmen.
if __name__ == "__main__":
    print("CloudLink V4 Server startet auf Port 3000...")
    cl_server.run(ip="0.0.0.0", port=3000)
