Dotenv.load

Vagrant.configure("2") do |config|

  config.vm.box = "gce"
  config.vm.box_url = "https://github.com/mitchellh/vagrant-google/raw/master/google.box"

  config.vm.synced_folder ".", "/vagrant", owner: "root", group: "root"

  config.ssh.pty = true

  config.vm.provider :google do |google, override|
    google.google_project_id   = "#{ENV['GOOGLE_PROJECT_ID']}"
    google.google_client_email = "#{ENV['GOOGLE_CLIENT_EMAIL']}"
    google.google_key_location = "#{ENV['GOOGLE_KEY_LOCATION']}"

    override.ssh.username         = "#{ENV['USERNAME']}"
    override.ssh.private_key_path = "#{ENV['PRIVATE_KEY_PATH']}"

    google.name = "vagrant-google"
    # imageid 2014/10/16
    # CentOS6      : centos-6-v20140926
    # CentOS7      : centos-7-v20140926
    # CoreOS alpha : coreos-alpha-459-0-0-v20141003
    google.image = "centos-7-v20140926"
    google.machine_type = "f1-micro"
    google.disk_size = "20"
    google.disk_type = "pd-ssd"
    google.zone = "asia-east1-c"
  end

end
