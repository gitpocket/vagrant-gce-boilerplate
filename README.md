Vagrant Google Compute Engine Boilerplate
=====

## Required plugins
- vagrant-google
- vagrant-librarian-chef
- dotenv
 - `vagrant plugin install dotenv`

## Environment
- CentOS 6 or CentOS 7 or CoreOS alpha
- git
- zsh
- prezto or oh-my-zsh

## Usage

1. Edit `Vagrantfile`

    ### google.name
    Your VM Instance name.

    ### google.image
    Choose OS.

    ### google.machine_type
    Choose machine type.

    ### google.zone
    Choose VM Instance zone.

    ### Select shell framework
    `chef.add_recipe "prezto"` or `chef.add_recipe "ohmyzsh"`.
    If you want a clean zsh, `chef.add_recipe "zshrc"`.

2. Create `.env`

    Example

    ```
    GOOGLE_PROJECT_ID   = 'xxxxxxx-xxxxxxx-xxx'
    GOOGLE_CLIENT_EMAIL = 'xxxxxxxxxxx-xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx@developer.gserviceaccount.com'
    GOOGLE_KEY_LOCATION = '~/.ssh/ProjectName-xxxxxxxxxxxx.p12'
    USERNAME            = 'YourLoginName'
    PRIVATE_KEY_PATH    = '~/.ssh/google_compute_engine'
    ```

3. Launch Vagrant.

```bash
$ vagrant up --provider=google
```
