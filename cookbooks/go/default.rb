execute "Download Go" do
  user node[:user]
  cwd "/tmp"
  command "wget https://storage.googleapis.com/golang/go1.7.4.linux-amd64.tar.gz"
end

execute "Decompress" do
  user node[:user]
  cwd "/tmp"
  command "tar xvf go1.7.4.linux-amd64.tar.gz"
end

execute "Install Go" do
  user "root"
  cwd "/tmp"
  command "chown -R root:root ./go; mv ./go /usr/local"
  not_if "test -e /usr/local/go/bin/go"
end
