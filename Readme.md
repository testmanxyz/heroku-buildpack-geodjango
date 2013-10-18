#Heroku buildpack: GeoDjango

This is a [Heroku buildpack](http://devcenter.heroku.com/articles/buildpacks) for GeoDjango apps.
It extends the original Python buildpack by adding GEOS, Proj.4 and GDAL, per the [GeoDjango installation
instructions](https://docs.djangoproject.com/en/dev/ref/contrib/gis/install/).

--- 

This is a [Heroku buildpack](http://devcenter.heroku.com/articles/buildpacks) for Python apps.

[![Build Status](https://secure.travis-ci.org/dulaccc/heroku-buildpack-geodjango.png?branch=master)](http://travis-ci.org/dulaccc/heroku-buildpack-geodjango)

---

##Configuration

You need to set two Django settings in order for `GEOS` and `GDAL` to work properly.

**settings.py**

```python
from os import environ

GEOS_LIBRARY_PATH = environ.get('GEOS_LIBRARY_PATH')
GDAL_LIBRARY_PATH = environ.get('GDAL_LIBRARY_PATH')
```

##Usage

```sh
$ heroku create --stack cedar --buildpack http://github.com/dulaccc/heroku-buildpack-geodjango/

$ git push heroku master
...
-----> Heroku receiving push
-----> Fetching custom buildpack... done
-----> Python app detected
-----> Checking for GDAL
       Fetching and installing GEOS 3.3.2
       Caching ...
       GEOS installed
-----> Checking for Proj.4
       Fetching and installing Proj.4 4.7.0
       Installing ...
       Proj.4 installed
-----> Checking for GDAL
       Fetching and installing GDAL 1.8.1
       Installing ...
       GDAL installed
-----> Preparing virtualenv
... etc.
```

## Notes

All libraries are stored in the directory `/app/.geodjango`.

## Contact

[Pierre Dulac](http://github.com/dulaccc)  
[@dulaccc](https://twitter.com/dulaccc)