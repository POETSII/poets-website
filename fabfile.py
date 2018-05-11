from fabric.api import run
from fabric.api import local
from fabric.api import env

env.host_string    = "tuura"
env.use_ssh_config = True
DIR                = "/home/gtarawneh/poets-project.org/www"

def deploy():

    local("rsync -qavz www/ tuura:%s" % DIR)
    run("chown -R :www-data %s" % DIR)
