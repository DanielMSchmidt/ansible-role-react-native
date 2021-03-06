# React Native [![Build Status](https://travis-ci.org/DanielMSchmidt/ansible-role-react-native.svg?branch=master)](https://travis-ci.org/DanielMSchmidt/ansible-role-react-native)

This is an ansible role to build the dev setup for a react-native application.
It aims to be the only thing you need to run on a fresh machine to let you run react native apps on it.

## Requirements

There should be none, if you experience any, please file an issue.
On a operating system level you currently need to have either linux or osx.

## Role Variables

- shells: the list of shells you want the environment variables to be set at. It defaults to `bash` and `fish` and it skips each shell it can't find. The supported shells are: `bash`

## Dependencies

None

## Example Playbook

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: local
      roles:
         - { role: danielmschmdit.ansible-role-react-native, shells: ['bash'] }

## Running a Test

- `vagrant up && vagrant ssh`
- `./vagrant/react-native/runVagrantTest.sh`

## License

BSD
