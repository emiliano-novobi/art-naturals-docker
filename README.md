# Dev Environment
You can you either Docker or a Local Setup

## Docker
```code
docker-compose up --build
```

## Local Setup

### PostgreSQL
```code
docker run -d -v art-naturals-db:/var/lib/postgresql/data -p 5432:5432 -e POSTGRES_USER=odoo -e POSTGRES_PASSWORD=odoo -e POSTGRES_DB=postgres --name art-naturals-db postgres
```

After reboot:

```code
docker start art-naturals-db
```


### Python
Install PyEnv https://github.com/pyenv/pyenv

```code
pyenv install 3.8.0
pyenv local 3.8.0
```

### Dependencies
Due to https://github.com/andersinno/suds-jurko/issues/6:

```code
pip install 'setuptools==58.0.0'
```

```code
pip install boto3
pip install zeep
```

Due to https://github.com/boto/botocore/issues/2580:

```code
pip install 'urllib3==1.26.7'
```


### NPM
```code
npm install -g less
```

### Odoo
```code
odoo/odoo-bin -c config/odoo-local.conf 
```

Restore the DB provided by Tan, then restart Odoo with -d art-naturals parameter:

```code
odoo/odoo-bin -c config/odoo-local.conf -d art-naturals
```
