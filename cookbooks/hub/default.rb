execute "Install hub" do
  user node[:user]
  command "export GOPATH=$HOME; /usr/local/go/bin/go get github.com/github/hub; cd $HOME/$GOAPTH/src/github.com/github/hub;"
end
