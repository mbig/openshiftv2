# openshiftv2

#### Table of Contents

1. [Installation](#installation)
2. [Add new users](#users)
3. [Setup - The basics of getting started with openshiftv2](#setup)
    * [What openshiftv2 affects](#what-openshiftv2-affects)
    * [Setup requirements](#setup-requirements)
    * [Beginning with openshiftv2](#beginning-with-openshiftv2)
4. [Usage - Configuration options and additional functionality](#usage)
5. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
5. [Limitations - OS compatibility, etc.](#limitations)
6. [Development - Guide for contributing to the module](#development)
7. [test] (#test)


## Installation

Hosts
osmaster.gmbc.com
osnode.gmbc.com

Apps
openshiftapps.gmbc.com
vtlapps.gmbc.com

DNS
openshiftdns.gmbc.com



[root@osmaster ~]# sh <(curl -s https://install.openshift.com/origin-m4)
Checking for necessary tools...
...looks good.
Downloading oo-install package...
Extracting oo-install to temporary directory...
Starting oo-install...
OpenShift Installer (Build 20151021-1917)
----------------------------------------------------------------------

Welcome to OpenShift.

This installer will guide you through a basic system deployment, based
on one of the scenarios below.

Select from the following installation scenarios.
You can also type '?' for Help or 'q' to Quit:
1. Install OpenShift Origin
2. Add a Node to an OpenShift Origin deployment
3. Generate a Puppet Configuration File
Type a selection and press <return>: 1

It looks like you are running oo-install for the first time on a new
system. The installer will guide you through the process of defining
your OpenShift deployment.

----------------------------------------------------------------------
DNS Configuration
----------------------------------------------------------------------

First off, we will configure some DNS information for this system.

Do you want me to install a new DNS server for OpenShift-hosted
applications, or do you want this system to use an existing DNS
server? (Answer 'yes' to have me install a DNS server.) (y/n/q/?) y

All of your hosted applications will have a DNS name of the form:

<app_name>-<owner_namespace>.<all_applications_domain>

What domain name should be used for all of the hosted apps in your
OpenShift system? |example.com| vtlapps.gmbc.com

Do you want to register DNS entries for your OpenShift hosts with the
same OpenShift DNS service that will be managing DNS records for the
hosted applications? (y/n/q) y

What domain do you want to use for the OpenShift hosts? gmbc.com

You have indicated that you want the installer to deploy DNS. Please configure a host to use as the nameserver.

Hostname (the FQDN that other OpenShift hosts will use to connect to
the host that you are describing): osmaster.gmbc.com

Hostname / IP address for SSH access to
osmaster.gmbc.com from the host where you are
running oo-install. You can say 'localhost' if you are running
oo-install from the system that you are describing:
|osmaster.gmbc.com| localhost
Using current user (root) for local installation.

Detected IP address 10.40.57.81 at interface eth0 for this host.
Do you want Nodes to use this IP information to reach this host?
(y/n/q/?) y

Normally, the BIND DNS server that is installed on this host will be
reachable from other OpenShift components using the host's configured
IP address (10.40.57.81).

If that will work in your deployment, press <enter> to accept the
default value. Otherwise, provide an alternate IP address that will
enable other OpenShift components to reach the BIND DNS service on
this host: |10.40.57.81| 10.40.57.81

That's all of the DNS information that we need right now. Next, we
need to gather information about the hosts in your OpenShift
deployment.

----------------------------------------------------------------------
Broker Configuration
----------------------------------------------------------------------

Okay. I'm going to need you to tell me about the host where you want
to install the Broker.

Do you want to assign the Broker role to
osmaster.gmbc.com? (y/n/q/?) y

Okay. Adding the Broker role to osmaster.gmbc.com.

That's everything we need to know right now for this Broker.

Do you want to configure an additional Broker? (y/n/q) n

Moving on to the next role.

----------------------------------------------------------------------
Node Configuration
----------------------------------------------------------------------

Okay. I'm going to need you to tell me about the host where you want
to install the Node.

Do you want to assign the Node role to
osmaster.gmbc.com? (y/n/q/?) y

Okay. Adding the Node role to osmaster.gmbc.com.

That's everything we need to know right now for this Node.

Do you want to configure an additional Node? (y/n/q) y

----------------------------------------------------------------------
Node Configuration
----------------------------------------------------------------------

Okay, please provide information about this Node host.

Hostname (the FQDN that other OpenShift hosts will use to connect to
the host that you are describing): osnode.gmbc.com

Hostname / IP address for SSH access to
osnode.gmbc.com from the host where you are
running oo-install. You can say 'localhost' if you are running
oo-install from the system that you are describing:
|osnode.gmbc.com| osnode.gmbc.com

Username for SSH access to osnode.gmbc.com: |root|
root

Validating root@osnode.gmbc.com... looks good.

Detected IP address 10.40.57.82 at interface eth0 for this host.
Do you want to use this as the public IP information for this Node?
(y/n/q/?) y

That's everything we need to know right now for this Node.

Currently you have described the following host system(s):
* osmaster.gmbc.com (Broker, NameServer, Node)
* osnode.gmbc.com (Node)

Do you want to configure an additional Node? (y/n/q) n

Do you want to manually specify usernames and passwords for the
various supporting service accounts? Answer 'N' to have the values
generated for you (y/n/q) y

Here are the details of your current deployment.

Note: ActiveMQ and MongoDB will be installed on all Broker instances.
For more flexibility, rerun the installer in advanced mode (-a).

DNS Settings
  * Installer will deploy DNS
  * Application Domain: vtlapps.gmbc.com
  * Register OpenShift hosts with DNS? Yes
  * Component Domain: gmbc.com

Global Gear Settings
+-------------------------+-------+
| Valid Gear Sizes        | small |
| User Default Gear Sizes | small |
| Default Gear Size       | small |
+-------------------------+-------+

Account Settings
+----------------------------+------------------------------------------------------------------+
| OpenShift Console User     | demo                                                             |
| OpenShift Console Password | KKyi570b4knjvh6bJMgmA                                            |
| Broker Session Secret      | u4cHYkl5uWvdTyicknA                                              |
| Console Session Secret     | 4KcMfCR9ChjdgZ3KkC3QVA                                           |
| Broker Auth Salt           | CISPdlofymiHEgJm9y4Iw                                            |
| Broker Auth Private Key    | -----BEGIN RSA PRIVATE KEY-----                                  |
|                            | MIIEogIBAAKCAQEA3m8nH1zK3xl1FEx85nuHVPqozmGi0uzBXdYG+78KhftKMrzv |
|                            | dc9julFeo8+p7nfw2Kx7z7EZUABPkO49j0b60H2XApIuAqMXMLPgH7B59U6txngR |
|                            | OQnH2BcvQ9ULeLiVMA3tRlHezxXwvV7MGP2E/OCEjNvsk31v2WGjtRqcdUJhBvgY |
|                            | ika7T0uldsPwCUF10URsu+dnrNT3abwyz8Pz8R8OoE/JndOyKZl54xAX40BFT8dQ |
|                            | pKSdH+rVWfdJw17e/BdStBt9+lJ1CNO4zywshFZq3YWIDCripKowi5+S9pOsb//v |
|                            | j1P9JEAfTD2rmCawOKFcr5M9gDXvLBhOZskz+QIDAQABAoIBAC2fWsTiAXJVBGCP |
|                            | d6bGe3GAoBMEj6L3kImwlmoYOw5UBln1yp+9U9UpT2IF+/K/gxTN++8Tgf+YsLkn |
|                            | RFUY1+TffZO3a9x6mw0QN84IIlugMaBdjBrI2MaHqtgc4Gd4ZJEgqiQcMrkC5QfS |
|                            | Y8ZUaWx8mHNTwGhX+BL8JdnFhYW/H8eyXSAtgnQiZSb5M9QnNo5Qq/iqdnywWHaM |
|                            | RMe5bN96M48wUwq5zsqd2uqjf4CDLJDYLySnjDYqtq4ssvLlxtI5BmDJ2lroNBep |
|                            | gAM9At4hwc7Uemu5/YLKQ8MVuQ8PAjXuJ26oZvnyKWJJIEH1gSB3SbS7aKa7HYdj |
|                            | kWibnMkCgYEA76nfqmfSG+/dQSmkXn7mxdYKa+FG9r99KqbnVKbcGb49TFs8c9GR |
|                            | uHTxPXgXBO27J1Jc4PeSxiDf84Ja+WLKLiU8biE0yhw6ZcPkSDqPKQRpBUKe9az4 |
|                            | 7xLMxGJjD7SdssmLhCqyBUC3mnjW8hTVpCSahmsqV6TJy2gPhPYkTmsCgYEA7Zig |
|                            | brIUSDFJ4KM8sRdEDHjI1XHLw91A2RXG01es/hmbp4ElHluI1Mnv2nEsdEcYUBPM |
|                            | U6BL6PEfSDXHo3VTaR3bYGgVh++RA1mMrgFDbMus81M/rXMbrv5i6np9weZuKWWL |
|                            | Do2ohtUTXjuHR+jA7wQ2LdWzQq3B6Zfn3L+CGCsCgYBQ3n9MXs/1AVElRcni4Os5 |
|                            | 4mmN0WxCooa3t63jUJKAVUMV2sthQVvsY/lrBnSuAxHdyNryRlfOZxVqc5gDAqS6 |
|                            | QXJMrwPDFxdVc246ORhJfOV7EunUeFNfSHaz5YcLq6RyybM8G7QKNbY+d3wAH6uf |
|                            | QYKqzMpy3HYDHs/ty6iglQKBgESWpeGuyMoaaHBPz0p0I/HRwHBVnHQbYAgLEE2c |
|                            | ZtUnwVZ2oqeD1xlOfk46E5Ixn+QmAvs1MBS73sLyu4IFcaHLu7O1+Fk4oE0uQb1N |
|                            | ohA7L99CbgR9UUWQLC/yUnFyOuT6ak02OatKwX+XgbMRjviw548NvOUH0g3EC2wf |
|                            | YMfnAoGATYpqGRsSKRPcl6j7E7GY0OV3XvSKPpsSumjLWcj1XwUQ2sQ+Cz5dTIbE |
|                            | qU4dLaPZKrJU+eotgHnVP0JhzxTdSlA403X66dsugDLjDMoVzqX5246C4C60V+ps |
|                            | r8CBqVdnStnSqtjjioy0umJo7e4N7/Epcy6NJWX9Tf6afyHcABk=             |
|                            | -----END RSA PRIVATE KEY-----                                    |
| MCollective User           | mcollective                                                      |
| MCollective Password       | VrFM1DdHIXhqcslHTyYgXA                                           |
| MongoDB Admin User         | admin                                                            |
| MongoDB Admin Password     | kysiFGznJSNqufQe6XqLA                                            |
| MongoDB Broker User        | openshift                                                        |
| MongoDB Broker Password    | 6Nf6bChw4MTqdHuSbCHntg                                           |
+----------------------------+------------------------------------------------------------------+

Node Districts
+----------+-----------+---------------------------------------------------------------------------+
| District | Gear Size | Nodes                                                                     |
+----------+-----------+---------------------------------------------------------------------------+
| Default  | small     | osmaster.gmbc.com,osnode.gmbc.com |
+----------+-----------+---------------------------------------------------------------------------+

Role Assignments
+------------+---------------------------------------+
| Broker     | osmaster.gmbc.com |
| NameServer | osmaster.gmbc.com |
| Nodes      | osmaster.gmbc.com |
|            | osnode.gmbc.com   |
+------------+---------------------------------------+

Host Information
+---------------------------------------+------------+
| Hostname                              | Roles      |
+---------------------------------------+------------+
| osmaster.gmbc.com | Broker     |
|                                       | NameServer |
|                                       | Node       |
| osnode.gmbc.com   | Node       |
+---------------------------------------+------------+

Choose an action:
1. Change the deployment configuration
2. View the full host configuration details
3. Proceed with deployment
Type a selection and press <return>:



[root@osmaster ~]# sh <(curl -s https://install.openshift.com/origin-m4)
Checking for necessary tools...
...looks good.
Downloading oo-install package...
Extracting oo-install to temporary directory...
Starting oo-install...
OpenShift Installer (Build 20151021-1917)
----------------------------------------------------------------------

Welcome to OpenShift.

This installer will guide you through a basic system deployment, based
on one of the scenarios below.

Select from the following installation scenarios.
You can also type '?' for Help or 'q' to Quit:
1. Install OpenShift Origin
2. Add a Node to an OpenShift Origin deployment
3. Generate a Puppet Configuration File
Type a selection and press <return>: 1


Here are the details of your current deployment.

Note: ActiveMQ and MongoDB will be installed on all Broker instances.
For more flexibility, rerun the installer in advanced mode (-a).

DNS Settings
  * Installer will deploy DNS
  * Application Domain: vtlapps.gmbc.com
  * Register OpenShift hosts with DNS? Yes
  * Component Domain: gmbc.com

Global Gear Settings
+-------------------------+-------+
| Valid Gear Sizes        | small |
| User Default Gear Sizes | small |
| Default Gear Size       | small |
+-------------------------+-------+

Account Settings
+----------------------------+------------------------------------------------------------------+
| OpenShift Console User     | demo                                                             |
| OpenShift Console Password | KKyi570b4knjvh6bJMgmA                                            |
| Broker Session Secret      | u4cHYkl5uWvdTyicknA                                              |
| Console Session Secret     | 4KcMfCR9ChjdgZ3KkC3QVA                                           |
| Broker Auth Salt           | CISPdlofymiHEgJm9y4Iw                                            |
| Broker Auth Private Key    | -----BEGIN RSA PRIVATE KEY-----                                  |
|                            | MIIEogIBAAKCAQEA3m8nH1zK3xl1FEx85nuHVPqozmGi0uzBXdYG+78KhftKMrzv |
|                            | dc9julFeo8+p7nfw2Kx7z7EZUABPkO49j0b60H2XApIuAqMXMLPgH7B59U6txngR |
|                            | OQnH2BcvQ9ULeLiVMA3tRlHezxXwvV7MGP2E/OCEjNvsk31v2WGjtRqcdUJhBvgY |
|                            | ika7T0uldsPwCUF10URsu+dnrNT3abwyz8Pz8R8OoE/JndOyKZl54xAX40BFT8dQ |
|                            | pKSdH+rVWfdJw17e/BdStBt9+lJ1CNO4zywshFZq3YWIDCripKowi5+S9pOsb//v |
|                            | j1P9JEAfTD2rmCawOKFcr5M9gDXvLBhOZskz+QIDAQABAoIBAC2fWsTiAXJVBGCP |
|                            | d6bGe3GAoBMEj6L3kImwlmoYOw5UBln1yp+9U9UpT2IF+/K/gxTN++8Tgf+YsLkn |
|                            | RFUY1+TffZO3a9x6mw0QN84IIlugMaBdjBrI2MaHqtgc4Gd4ZJEgqiQcMrkC5QfS |
|                            | Y8ZUaWx8mHNTwGhX+BL8JdnFhYW/H8eyXSAtgnQiZSb5M9QnNo5Qq/iqdnywWHaM |
|                            | RMe5bN96M48wUwq5zsqd2uqjf4CDLJDYLySnjDYqtq4ssvLlxtI5BmDJ2lroNBep |
|                            | gAM9At4hwc7Uemu5/YLKQ8MVuQ8PAjXuJ26oZvnyKWJJIEH1gSB3SbS7aKa7HYdj |
|                            | kWibnMkCgYEA76nfqmfSG+/dQSmkXn7mxdYKa+FG9r99KqbnVKbcGb49TFs8c9GR |
|                            | uHTxPXgXBO27J1Jc4PeSxiDf84Ja+WLKLiU8biE0yhw6ZcPkSDqPKQRpBUKe9az4 |
|                            | 7xLMxGJjD7SdssmLhCqyBUC3mnjW8hTVpCSahmsqV6TJy2gPhPYkTmsCgYEA7Zig |
|                            | brIUSDFJ4KM8sRdEDHjI1XHLw91A2RXG01es/hmbp4ElHluI1Mnv2nEsdEcYUBPM |
|                            | U6BL6PEfSDXHo3VTaR3bYGgVh++RA1mMrgFDbMus81M/rXMbrv5i6np9weZuKWWL |
|                            | Do2ohtUTXjuHR+jA7wQ2LdWzQq3B6Zfn3L+CGCsCgYBQ3n9MXs/1AVElRcni4Os5 |
|                            | 4mmN0WxCooa3t63jUJKAVUMV2sthQVvsY/lrBnSuAxHdyNryRlfOZxVqc5gDAqS6 |
|                            | QXJMrwPDFxdVc246ORhJfOV7EunUeFNfSHaz5YcLq6RyybM8G7QKNbY+d3wAH6uf |
|                            | QYKqzMpy3HYDHs/ty6iglQKBgESWpeGuyMoaaHBPz0p0I/HRwHBVnHQbYAgLEE2c |
|                            | ZtUnwVZ2oqeD1xlOfk46E5Ixn+QmAvs1MBS73sLyu4IFcaHLu7O1+Fk4oE0uQb1N |
|                            | ohA7L99CbgR9UUWQLC/yUnFyOuT6ak02OatKwX+XgbMRjviw548NvOUH0g3EC2wf |
|                            | YMfnAoGATYpqGRsSKRPcl6j7E7GY0OV3XvSKPpsSumjLWcj1XwUQ2sQ+Cz5dTIbE |
|                            | qU4dLaPZKrJU+eotgHnVP0JhzxTdSlA403X66dsugDLjDMoVzqX5246C4C60V+ps |
|                            | r8CBqVdnStnSqtjjioy0umJo7e4N7/Epcy6NJWX9Tf6afyHcABk=             |
|                            | -----END RSA PRIVATE KEY-----                                    |
| MCollective User           | mcollective                                                      |
| MCollective Password       | VrFM1DdHIXhqcslHTyYgXA                                           |
| MongoDB Admin User         | admin                                                            |
| MongoDB Admin Password     | kysiFGznJSNqufQe6XqLA                                            |
| MongoDB Broker User        | openshift                                                        |
| MongoDB Broker Password    | 6Nf6bChw4MTqdHuSbCHntg                                           |
+----------------------------+------------------------------------------------------------------+

Node Districts
+----------+-----------+---------------------------------------+
| District | Gear Size | Nodes                                 |
+----------+-----------+---------------------------------------+
| Default  | small     | osmaster.gmbc.com |
+----------+-----------+---------------------------------------+

Role Assignments
+------------+---------------------------------------+
| Broker     | osmaster.gmbc.com |
| NameServer | osmaster.gmbc.com |
| Node       | osmaster.gmbc.com |
+------------+---------------------------------------+

Host Information
+---------------------------------------+------------+
| Hostname                              | Roles      |
+---------------------------------------+------------+
| osmaster.gmbc.com | Broker     |
|                                       | NameServer |
|                                       | Node       |
+---------------------------------------+------------+

Choose an action:
1. Change the deployment configuration
2. View the full host configuration details
3. Proceed with deployment
Type a selection and press <return>: 3

Here is the subscription configuration that the installer will use for
this deployment.
+-------------------+-----------------------------------------------------------------+
| Setting           | Value                                                           |
+-------------------+-----------------------------------------------------------------+
| type              | yum                                                             |
| repos_base        | https://mirror.openshift.com/pub/origin-server/release/4/rhel-6 |
| jenkins_repo_base | http://pkg.jenkins-ci.org/redhat                                |
| os_repo           | -                                                               |
| os_optional_repo  | http://download.fedoraproject.org/pub/epel/6/$basearch          |
| puppet_repo_rpm   | http://yum.puppetlabs.com/puppetlabs-release-el-6.noarch.rpm    |
| jboss_repo_base   | -                                                               |
+-------------------+-----------------------------------------------------------------+

Do you want to make any changes to the subscription info in the
configuration file? (y/n/q/?) n

Do you want to set any temporary subscription settings for this
installation only? (y/n/q/?) n

Preflight check: verifying system and resource availability.

Checking osmaster.gmbc.com:
* Target host is running CentOS
* Located getenforce
* SELinux is running in enforcing mode
* Located yum
* puppet RPM is installed.
* openssh-clients RPM is installed.
* bind RPM is installed.
Error: No matching Packages to list

Deploying workflow 'origin_deploy'.

Preparing to install OpenShift Origin on the following hosts:
  * osmaster.gmbc.com (Broker, DBServer, MsgServer, NameServer, Node)

Generating template for 'osmaster.gmbc.com'
ls: cannot access /var/named/Kvtlapps.gmbc.com*.key: No such file or directory
* Checking for vtlapps.gmbc.com DNS key... not found; attempting to generate.
* Key generation successful.
ls: cannot access /var/named/Kgmbc.com*.key: No such file or directory
* Checking for gmbc.com DNS key... not found; attempting to generate.
* Key generation successful.
* BIND DNS enabled.
* Created template /tmp/oo_install_configure_osmaster.gmbc.com.pp

osmaster.gmbc.com: Running Puppet deployment for host
Error: Could not uninstall module 'openshift-openshift_origin'
  Module 'openshift-openshift_origin' is not installed
osmaster.gmbc.com: Puppet module removal failed. This is expected if the module was not installed.
osmaster.gmbc.com: Attempting Puppet module installation (try #1)
Warning: Symlinks in modules are unsupported. Please investigate symlink duritong-sysctl-0.0.4/spec/fixtures/modules/sysctl/lib->../../../../lib.
Warning: Symlinks in modules are unsupported. Please investigate symlink duritong-sysctl-0.0.4/spec/fixtures/modules/sysctl/manifests->../../../../manifests.
osmaster.gmbc.com: Puppet module installation succeeded.
osmaster.gmbc.com: Cleaning yum repos.
osmaster.gmbc.com: Running the Puppet deployment. This step may take up to an hour.
osmaster.gmbc.com: Puppet deployment completed.
osmaster.gmbc.com: Cleaning up temporary files.

Host deployments completed succesfully.

Restarting services in dependency order.
osmaster.gmbc.com: service named restart succeeded.
osmaster.gmbc.com: service mongod restart succeeded.
osmaster.gmbc.com: service ruby193-mcollective stop succeeded.
osmaster.gmbc.com: service activemq restart succeeded.
osmaster.gmbc.com: service ruby193-mcollective start succeeded.
osmaster.gmbc.com: service openshift-broker restart succeeded.
osmaster.gmbc.com: service openshift-console restart succeeded.

Now performing post-installation tasks.

Successfully created district 'Default'.
Attempting to add compatible Nodes to Default district... succeeded.

Attempting to register available cartridge types with Broker(s).
Updating 20 cartridges ...
Cartridge registrations succeeded.


The following user / password combinations were created during the configuration:
Web console:   demo / KKyi570b4knjvh6bJMgmA
MCollective:   mcollective / VrFM1DdHIXhqcslHTyYgXA
MongoDB Admin: admin / kysiFGznJSNqufQe6XqLA
MongoDB User:  openshift / 6Nf6bChw4MTqdHuSbCHntg


Be sure to record these somewhere for future use.


Local temporary files removed.


Deployment successful. Exiting installer.

All tasks completed.
oo-install exited; removing temporary assets.



## Users
 htpasswd /etc/openshift/htpasswd user1
 enter new user's password

If applicable, this section should have a brief description of the technology
the module integrates with and what that integration enables. This section
should answer the questions: "What does this module *do*?" and "Why would I use
it?"

If your module has a range of functionality (installation, configuration,
management, etc.) this is the time to mention it.

## Setup

### What openshiftv2 affects

* A list of files, packages, services, or operations that the module will alter,
  impact, or execute on the system it's installed on.
* This is a great place to stick any warnings.
* Can be in list or paragraph form.

### Setup Requirements **OPTIONAL**

If your module requires anything extra before setting up (pluginsync enabled,
etc.), mention it here.

### Beginning with openshiftv2

The very basic steps needed for a user to get the module up and running.

If your most recent release breaks compatibility or requires particular steps
for upgrading, you may wish to include an additional section here: Upgrading
(For an example, see http://forge.puppetlabs.com/puppetlabs/firewall).

## Usage

Put the classes, types, and resources for customizing, configuring, and doing
the fancy stuff with your module here.

## Reference

Here, list the classes, types, providers, facts, etc contained in your module.
This section should include all of the under-the-hood workings of your module so
people know what the module is touching on their system but don't need to mess
with things. (We are working on automating this section!)

## Limitations

This is where you list OS compatibility, version compatibility, etc.

## Development

Since your module is awesome, other users will want to play with it. Let them
know what the ground rules for contributing are.

## Release Notes/Contributors/Etc **Optional**

If you aren't using changelog, put your release notes here (though you should
consider using changelog). You may also add any additional sections you feel are
necessary or important to include here. Please use the `## ` header.

##Test
