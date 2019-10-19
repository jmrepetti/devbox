version = '2.5.0'

rbenv_user_install 'vagrant'

rbenv_plugin 'ruby-build' do
  git_url 'https://github.com/rbenv/ruby-build.git'
  user 'vagrant'
end

rbenv_ruby version do
  user 'vagrant'
end

rbenv_global version do
  user 'vagrant'
end