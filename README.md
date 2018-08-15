Ansible Role Openvpn server
========

[![Build Status](https://travis-ci.org/Turgon37/ansible-openvpn.svg?branch=master)](https://travis-ci.org/Turgon37/ansible-openvpn)
[![License](https://img.shields.io/badge/license-MIT%20License-brightgreen.svg)](https://opensource.org/licenses/MIT)
[![Ansible Role](https://img.shields.io/badge/ansible%20role-Turgon37.openvpn-blue.svg)](https://galaxy.ansible.com/Turgon37/openvpn/)

## Description

:grey_exclamation: Before using this role, please know that all my Ansible roles are fully written and accustomed to my IT infrastructure. So, even if they are as generic as possible they will not necessarily fill your needs, I advice you to carrefully analyse what they do and evaluate their capability to be installed securely on your servers.

This roles configures one or multiple instances of Openvpn.

## Requirements

Require Ansible >= 2.4

### Dependencies

## OS Family

This role is available for Debian

## Features

At this day the role can be used to :

  * install openvpn
  * [local facts](#facts)

## Configuration

### Server

All variables which can be overridden are stored in [defaults/main.yml](defaults/main.yml) file as well as in table below. To see default values please refer to this file.

| Name                          | Description                                                                                               |
| ----------------------------- | --------------------------------------------------------------------------------------------------------- |
| `openvpn__version`            | Choose the OpenVPN version to install (as available in repositories) Ex: 2.4.0-6+deb9u2 or 2.4.6-stretch0 |

## Facts

By default the local fact are installed and expose the following variables :

* ```ansible_local.openvpn.version_full```
* ```ansible_local.openvpn.version_major```


## Example

### Playbook

Use it in a playbook as follows:

```yaml
- hosts: all
  roles:
    - turgon37.openvpn
```

### Inventory