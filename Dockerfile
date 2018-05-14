FROM         python
COPY         . /app
WORKDIR      /app
RUN          pip install -r requirements.txt
ENV          ROUTES_FILE /tmp/asyncy/config/routes.cache

CMD          ["python", "-m", "app.main"]
