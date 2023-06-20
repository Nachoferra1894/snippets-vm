# Generating Certificates for your Website

This guide provides step-by-step instructions on how to generate SSL/TLS certificates for your website using Certbot. Certbot is a command-line tool that automates the process of obtaining and installing certificates from Let's Encrypt, a free and open certificate authority.

## Prerequisites

Before proceeding, make sure you have the following:

- A laptop or computer with command-line access.
- A website that is already online and accessible over HTTP (port 80).
- SSH access to the server hosting your website.
- Sudo privileges on the server.

If you don't meet these requirements, some hosting providers offer automated HTTPS setup, so you might want to check if your provider supports that. Alternatively, you can refer to the documentation specific to your hosting environment.

## SSH into the Server

First, SSH into the server running your HTTP website using a user account with sudo privileges. You can use the following command from your local machine's terminal:

```
ssh printscript@<vm-ip>
```

## Install nginx

Install nginx to generate certificates
```
sudo apt update
sudo apt install nginx
```
 
## Install certbot

Certbot is probably already installed, check with the command

```
certbot --version
```

If you see a certbot version and not command not found: certbot, skip to the next step (Choose nginx to run certbot)
If you dont, you'll have to install cerbot and generate a folder to save the certificates

### Install snap 

```
sudo snap install core; sudo snap refresh core
```

### Install certbot with snap

``` 
sudo snap install --classic certbot
```

### Prepare the Certbot command

Execute the following instruction on the command line on the machine to ensure that the certbot command can be run.
```
sudo ln -s /snap/bin/certbot /usr/bin/certbot
```

## Choose nginx to run certbot

Run this command to get a certificate and have Certbot edit your nginx configuration automatically to serve it, turning on HTTPS access in a single step.
```
sudo certbot --nginx
```

And that's all!
You can check if certbot automatic certificate renewal is working with the command 
```
sudo certbot renew --dry-run
```
