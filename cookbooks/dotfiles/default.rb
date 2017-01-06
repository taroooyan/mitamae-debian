git "clone dotfiles" do
  user "#{node[:user]}"
  destination "/home/#{node[:user]}/dotfiles"
  repository "https://github.com/taroooyan/dotfiles.git"
  not_if "test -d /home/#{node[:user]}/dotfiles"
end
execute "dotfiles setup" do
  user "#{node[:user]}"
  cwd "/home/#{node[:user]}/dotfiles"
  command "./setup.sh"
end
