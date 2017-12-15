React Native
=========

This is an ansible role to build the dev setup for a react-native application.
It aims to be the only thing you need to run on a fresh machine to let you run react native apps on it.

Requirements
------------

There should be none, if you experience any, please file an issue.

Role Variables
--------------

- shells: the list of shells you want the environment variables to be set at. It defaults to `bash` and `fish` and it skips each shell it can't find.

Dependencies
------------

None

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: local
      roles:
         - { role: danielmschmdit.ansible-role-react-native, shells: ['fish', 'bash'] }

License
-------

BSD

