execute "Install peco" do
  user node[:user]
  command "export GOPATH=$HOME; /usr/local/go/bin/go get github.com/peco/peco/cmd/peco"
end
