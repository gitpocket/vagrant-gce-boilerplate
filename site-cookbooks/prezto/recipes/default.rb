git "/home/fainder/.zprezto" do
  repository  "https://github.com/sorin-ionescu/prezto.git"
  reference   "master"
  action      :checkout
  user        "fainder"
  group       "fainder"
end

template "/home/fainder/zsh/.zlogin" do
  path    "/home/fainder/.zlogin"
  source  "zlogin.erb"
  owner   "fainder"
  group   "fainder"
  mode    0644
end

template "/home/fainder/zsh/.zlogout" do
  path    "/home/fainder/.zlogout"
  source  "zlogout.erb"
  owner   "fainder"
  group   "fainder"
  mode    0644
end

template "/home/fainder/zsh/.zpreztorc" do
  path    "/home/fainder/.zpreztorc"
  source  "zpreztorc.erb"
  owner   "fainder"
  group   "fainder"
  mode    0644
end

template "/home/fainder/zsh/.zprofile" do
  path    "/home/fainder/.zshrc"
  source  "zshrc.erb"
  owner   "fainder"
  group   "fainder"
  mode    0644
end

template "/home/fainder/zsh/.zshenv" do
  path    "/home/fainder/.zshenv"
  source  "zshenv.erb"
  owner   "fainder"
  group   "fainder"
  mode    0644
end

template "/home/fainder/zsh/.zshrc" do
  path    "/home/fainder/.zshrc"
  source  "zshrc.erb"
  owner   "fainder"
  group   "fainder"
  mode    0644
end

execute "set zsh as default shell" do
  command "chsh -s $(which zsh) fainder"
end
