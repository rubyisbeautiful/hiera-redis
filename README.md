## Overview

Compatible with Hiera 5

hiera-redis empowers
[Hiera](https://puppet.com/docs/puppet/5.4/hiera_custom_backends.html) to retrieve values from a Redis database.

Supported Redis types:

* set
* sorted set
* list
* string
* hash

All types can be JSON or YAML serialized but I don't see anything other than a string type being used for the job.

## Configuration

The following options can be specified in hiera.yaml:
<pre>
:redis:
  :password: clearp@ssw0rd        # if your Redis server requires authentication
  :port: 6380                     # unless present, defaults to 6379
  :db: 1                          # unless present, defaults to 0
  :host: db.example.com           # unless present, defaults to localhost
  :socket_path: /tmp/redis.sock          # overrides port if unixsocket exists
  :soft_connection_failure: true  # bypass exception if Redis server is unavailable; default is false
  :separator: /                   # unless present, defaults to :

  :deserialize: :json             # Try to deserialize; both :yaml and :json are supported
                                  # When :json is used and JSON::ParseError is raised, gracefully fall
                                  # back to returning the original value. This is needed to work around
                                  # JSON.parse('foo'.to_json)
</pre>

## Install


Use puppet to install as a module

## Example


There is an included test setup in `environments`, so you should be able to clone this, 
`docker-compose up -d` and then query:

`puppet lookup profile::hiera_test::foo --environment test --debug`





### Historical Information

This was original forked from https://github.com/reliantsolutions/hiera-redis and I modified it to
publish as a proper Puppet module.  I modified it slightly for bugs, usability, etc, and then left it alone.
Puppet has changed a lot.  I tried to pull from the upstream, but GitHub has said that the histories
are no longer related.  
Below please find the original author information.   

Related Information
===================
See the
[hiera-resources](http://github.com/reliantsecurity/hiera-resources)
documentation for an example of using hiera-redis with serialized
strings stored in Redis (JSON and YAML supported).

Contact
=======

* Author: Adam Kosmin c/o Reliant Security, Inc.
* Email: akosminATreliantsecurity.com
* IRC (freenode): windowsrefund

