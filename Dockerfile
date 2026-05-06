# Verwende ein offizielles Python-Image
FROM python:3.11-slim

# Verhindert, dass Python-Logs verzögert in fly.io angezeigt werden
ENV PYTHONUNBUFFERED=1

# Arbeitsverzeichnis im Container festlegen
WORKDIR /app

# Kopiere die requirements.txt und installiere Abhängigkeiten
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Kopiere deinen restlichen Server-Code in den Container
COPY . .

# Teile fly.io mit, dass der Server auf Port 3000 horcht (Standard bei CloudLink)
EXPOSE 3000

# >>> WICHTIG: Ersetze "server.py" durch den Namen deiner Start-Datei! <<<
CMD["python", "server.py"]
