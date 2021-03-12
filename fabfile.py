from fabric.api import run
from fabric.api import local
from fabric.api import env
from fabric.operations import put
from fabric.contrib.files import exists

env.host_string    = "tuura"
env.use_ssh_config = True
DIR                = "/home/gtarawneh/test.org/www"

def deploy():
    local("make")
    if exists(DIR):
        run("trash %s" % DIR)
    put("www", "/home/gtarawneh/poets-project.org")
    run("sudo chown -R :www-data %s" % DIR)
