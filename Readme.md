Heroku buildpack: GeoDjango
========================

<<<<<<< HEAD
This is a [Heroku buildpack](http://devcenter.heroku.com/articles/buildpacks) for GeoDjango apps.
It extends the original Python buildpack by adding GEOS, Proj.4 and GDAL, per the [GeoDjango installation
instructions](https://docs.djangoproject.com/en/dev/ref/contrib/gis/install/).

This buildpack assumes your PostGIS server lives outside the Heroku stack, though we'd love to see it
forked to handle any setup for Heroku's Postgres services.
=======
This is a [Heroku buildpack](http://devcenter.heroku.com/articles/buildpacks) for Python apps, powered by [pip](http://www.pip-installer.org/).
>>>>>>> upstream/master

[![Build Status](https://secure.travis-ci.org/heroku/heroku-buildpack-python.png?branch=master)](http://travis-ci.org/heroku/heroku-buildpack-python)

Usage
-----

Example usage:

    $ heroku create --stack cedar --buildpack http://github.com/cirlabs/heroku-buildpack-geodjango/

    $ git push heroku master
    ...
<<<<<<< HEAD
    -----> Heroku receiving push
    -----> Fetching custom buildpack... done
    -----> Python app detected
    -----> Fetching and installing GEOS 3.3.2
    -----> Installing ...
       GEOS installed
    -----> Fetching and installing Proj.4 4.7.0
    -----> Installing ...
       Proj.4 installed
    -----> Fetching and installing GDAL 1.8.1
    -----> Installing ...
       GDAL installed
    -----> Preparing virtualenv version 1.7
    ... etc.

Notes
-----

All libraries are stored in /app/.github.

IMPORTANT: You will need to set two Django settings in order for GEOS and GDAL to work properly!

GEOS_LIBRARY_PATH = '/app/.geodjango/geos/lib/libgeos_c.so'

GDAL_LIBRARY_PATH = '/app/.geodjango/gdal/lib/libgdal.so'
=======
    -----> Fetching custom git buildpack... done
    -----> Python app detected
    -----> No runtime.txt provided; assuming python-2.7.3.
    -----> Preparing Python runtime (python-2.7.3)
    -----> Installing Distribute (0.6.34)
    -----> Installing Pip (1.2.1)
    -----> Installing dependencies using Pip (1.2.1)
           Downloading/unpacking Flask==0.7.2 (from -r requirements.txt (line 1))
           Downloading/unpacking Werkzeug>=0.6.1 (from Flask==0.7.2->-r requirements.txt (line 1))
           Downloading/unpacking Jinja2>=2.4 (from Flask==0.7.2->-r requirements.txt (line 1))
           Installing collected packages: Flask, Werkzeug, Jinja2
           Successfully installed Flask Werkzeug Jinja2
           Cleaning up...

You can also add it to upcoming builds of an existing application:

    $ heroku config:add BUILDPACK_URL=git://github.com/heroku/heroku-buildpack-python.git

The buildpack will detect your app as Python if it has the file `requirements.txt` in the root. 

It will use Pip to install your dependencies, vendoring a copy of the Python runtime into your slug. 

Specify a Runtime
-----------------

You can also provide arbitrary releases Python with a `runtime.txt` file.

    $ cat runtime.txt
    python-3.3.0
    
Runtime options include:

- python-2.7.4
- python-3.3.1
- pypy-1.9 (experimental)
>>>>>>> upstream/master
