#Coffer
##What you need, in-a-box

Vagrant templates for your environmental pleasures. 

## Requirements

In order to use Coffer's various in-a-boxes, you first need to have [Vagrant](http://docs.vagrantup.com/v2/installation/) and [VirtualBox](https://www.virtualbox.org/) installed. These two installations couldn't be any easier. To install [Vagrant](http://thediscoblog.com/blog/2013/10/16/ssh-and-vagrant/), simply go to the downloads page and pick your target distribution. Vagrant provisions machines on top of virtual machine providers like VMWare, [AWS](http://thediscoblog.com/blog/categories/aws/), and VirtualBox. VirtualBox is free and easy to install -- like Vagrant, simply [go to the downloads section](https://www.virtualbox.org/wiki/Downloads) and pick your target platform. 

### Elasticsearch-in-a-box

Ubuntu 12.04 64-bit. Oracle Java 7 and Elasticsearch 0.90.7.

#### How to

```
vagrant box add esinabox https://s3.amazonaws.com/coffers/esinabox.box
```

This command will download the Elasticsearch-in-a-box template. Once that completes (it'll take a few moments depending on your connection), execute this command:

``` 
vagrant init 'esinabox'
```

``` 
vagrant up
```

Now that Elasticsearch-in-a-box is running locally on your machine, you can open up a new terminal and execute RESTful commands like normal because Elasticsearch is running on same ports: 9200 & 9300. So go ahead and execute some queries, like so:

``` 
curl -XGET 'http://localhost:9200/_status?pretty=true'
```

And when you are done, go ahead and tear down the instance like so:

``` 
vagrant destroy -f 
```