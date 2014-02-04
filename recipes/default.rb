package "mpd" do
  action :install
end

user node[:mpd][:user] do
  action :create
end

directory node[:mpd][:music_directory] do
  action :create
  owner node[:mpd][:user]
  mode "0755"
end

service "mpd" do
  supports :status => true, :reload => true, :restart => true
  action [:enable, :start]
end

template "/etc/mpd.conf" do
  source "mpd.conf.erb"
  mode "0644"
  notifies :restart, resources(:service => "mpd")
end
