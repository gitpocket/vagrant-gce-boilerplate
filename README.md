Vagrant Google Compute Engine Boilerplate
=====

# Required plugins
- vagrant-google
- vagrant-librarian-chef
- dotenv
 - `vagrant plugin install dotenv`

# Usage

Edit `Vagrantfile` and `.env`

## `google.name`
Your Instance name.

## `google.image`
Choose OS.

## `google.machine_type`
Choose machine type.

## `google.zone`
Your Project zone.

## Select shell framework
`chef.add_recipe "prezto"` or `chef.add_recipe "ohmyzsh"`.
If you want a clean zsh, `chef.add_recipe "zshrc"`.

```bash
vagrant up --provider=google
```

# Environment
- CentOS 6 or CentOS 7 or CoreOS alpha
- git
- zsh
- prezto or oh-my-zsh
