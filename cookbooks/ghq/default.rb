execute "Install ghq" do
  user node[:user]
  command "export GOPATH=$HOME; /usr/local/go/bin/go get github.com/motemen/ghq"
end
