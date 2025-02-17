## Golden VM Images

Gold is valuable, Gold is eternal, Gold is a sought, guarded and desired. Golden does not seem like the right word for what I'm about to describe, but it is often ascribed to this style of image preparation.

Images for servers are generally implemented using a base server image, i.e. ubuntu server, or Windows server 2022, then a smorgasbord of seemingly random (but 100% essential) packages, binaries and server features are required before the server can be made available.

This process is costly, time consuming, and means everything required needs to be included in the bootstrapping script. You are probably used to doing something similar with docker. If anything is missed, the creation needs to begin anew. If something needs to be included in the server that wasn't originally included, a new server will need to be built.

I am here to tell you this doesn't need to be the case. We have transcended this costly process to provide something more useful. Less time consuming, and less prone to error. With the help of a tool designed for exactly this purpose.

### Packer
I'm sure you've heard of [HashiCorp](https://www.hashicorp.com/), but if not allow me to enlighten you. They are the company that makes Terraform, as well as Consul, and Vault. They also make the tool Packer, which is a configuration tool designed for defining and creating genericised VM images. Here's a code block from a configuration file I've been working on.

```
  provisioner "shell" {
    script            = "./scripts/linux/software/restart.sh"
    valid_exit_codes  = [0]
    expect_disconnect = true
    max_retries       = 2
  }

  provisioner "shell" {
    script           = "./scripts/linux/software/download-ghrunner.sh"
    valid_exit_codes = [0]
    max_retries      = 3
    pause_before     = "30s"
  }
```

The first block restarts the machine, then the second waits 30 seconds for the machine to come back up, and downloads the Github action runners installation script. This is a typical set of steps within a packer image configuration. You can install any number of packages you need to be available within your environment just by including an install script, often using a package manager, within the configuration file.

Now that I've made the Github action runners install available within the image being prepared, when I go to set up a new runner I no longer have to wait for the download to complete before I can start the instantiation. We can do the same for many other tools, i.e. yq, jq, powershell, dotnet, sqlpackage, the azure or gcp cli, anything you can think of that would normally need to be installed when instantiating a new server can be put into the packer definition to reduce the spin up time of the VM instance, and give users a solid base to build their machine off of, without worrying about dependencies they might have missed and only including the ones that are critical to the work they are doing.

```
  # What image is this image based off?
  image_publisher = "Canonical"
  image_offer     = "0001-com-ubuntu-server-jammy"
  image_sku       = "22_04-lts-gen2"
  os_type         = "Linux"
```

This code block is also from within the server definition, but from a different file. It defines the source for the base image of the server. This means that if you wish to change the image your server is based off, for instance if you upgrade, or wish to use a different Linux distribution it can easily be done. It also means the file that installs all of your required packages can be used independently of the backend server you are using, as long as the same package manager is available within it.

### Cascading updates
I'm sure by now you can see the benefits of this set up. But another way of setting Packer definitions up can make this process even more powerful.

If you use a server image you've created as the basis for a new Packer definition, you can feed pre-defined images into other images, allowing you to build up the VM images on their way to specialisation.

I have not yet implemented this process in our new Github tenant, but in legacy Muddy Boots, we had a process that went something like this:

Windows Server > Base Server
	Takes Windows Server, and installs all of the necessary binaries, packages, tooling, and features required for every application server currently used by our applications.

Base Server > Web Server
	Enables IIS on the server, as well as other Windows Features for web servers, as well as some other tools for security and monitoring.

Web Server > Product Specific Web Server
	When further configuration was required, i.e. the product required a specific binary, or a specific license for something out of the ordinary or bespoke the product needed.

This set up meant if we needed to make an update to ever server currently deployed, we could update the base image, and if products needed something specific for new work they were doing, that was an easy update as well.

Another thing required by this set up is what are called Auto Scalers in GCP and Scale Sets in Azure. Basically a group of servers that can be scaled up or down depending on load. The other use is a very straightforward way to refresh an environment if a change needed to go out. You would simply Increase the number of available servers, and then delete the ones using old images, finally scaling down once the process was complete. 

By leveraging this approach we remove the need for maintenance, give ourselves a simple and robust recovery method, and a way to nimbly update live application servers where required, without the need for down time. 

Also in the scenario where an unnamed security provider decides to push an untested update that takes out the entire world's Windows Servers, our mode of recovery is simply to destroy and rebuild the affected servers, all within a short amount of time due to the readiness of our images.

### Summary
Packer VM images can provide a much needed hardening of your servers configuration, a faster instantiation time for new servers, and along with auto scalers/scale sets they can also provide a quick recovery and maintenance method.
