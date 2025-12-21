FROM python:3.10-bookworm
WORKDIR /app

# On copie le fichier depuis le dossier local 'app/' vers le dossier actuel du conteneur '.'
COPY app/app.py . 

RUN pip install Flask
ENTRYPOINT [ "python", "-m", "flask", "run", "--host=0.0.0.0", "--port=80" ]