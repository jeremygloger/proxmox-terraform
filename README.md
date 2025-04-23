# Proxmox Terraform Provider

This repository contains Terraform configurations and modules for deploying and managing infrastructure on Proxmox VE (Virtual Environment).

## Overview

This project provides Terraform configurations to automate the provisioning and management of virtual machines and containers in a Proxmox environment, making infrastructure management more efficient and consistent.

## Prerequisites

You will need to create a template for your VM. This will allow you to create from a base-image with pre-installed tools. You can also opt to use Cloud-Init.
More info here: https://pve.proxmox.com/wiki/VM_Templates_and_Clones

You will also need to setup the following secrets in your Repo
-  ARM_CLIENT_ID
-  ARM_CLIENT_SECRET
-  ARM_SUBSCRIPTION_ID
-  ARM_TENANT_ID
-  PROXMOX_API_URL
-  PROXMOX_API_TOKEN_SECRET
-  PROXMOX_NODE (note: you can make this a variable if you want)
