# Dev Environment
## Art Naturals repo
```
git clone git@github.com:novobi1/ArtNaturals-Odoo.git customized_addons
cd customized_addons                                                                                                                                   master ✱
git checkout features/edi_sps_integration
```

## Run Odoo
You can run Odoo either in **Docker** or in a **Local Setup**.

## Run in Docker
```code
docker-compose up --build
```

## Run in Local Setup

### PostgreSQL
```code
docker run -d -v art-naturals-db:/var/lib/postgresql/data -p 5432:5432 -e POSTGRES_USER=odoo -e POSTGRES_PASSWORD=odoo -e POSTGRES_DB=postgres --name art-naturals-db postgres
```

After reboot:

```code
docker start art-naturals-db
```


### Python
Python 3.8 works OK.

You can install Python using [PyEnv](https://github.com/pyenv/pyenv):

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
Point to your local project directory in ```config/odoo-local.conf```:

For example, if the local project directory is ```/mnt/data/code/novobi/art-naturals-docker```:
```
addons_path=/mnt/data/code/novobi/art-naturals-docker/odoo/addons,/mnt/data/code/novobi/art-naturals-docker/enterprise,/mnt/data/code/novobi/art-naturals-docker/customized_addons
```

Then run Odoo:

```code
odoo/odoo-bin -c config/odoo-local.conf 
```

Restore the Odoo DB provided by your teammates, then restart Odoo with the ```-d art-naturals``` parameter:

```code
odoo/odoo-bin -c config/odoo-local.conf -d art-naturals
```
