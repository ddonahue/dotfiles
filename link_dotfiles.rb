#!/usr/bin/env ruby

# from http://errtheblog.com/posts/89-huba-huba
dotfiles_dir = File.dirname(__FILE__)
home_dir = File.expand_path('~')

dotfiles = ['bash_profile','bashrc','gvimrc','vimrc','gitconfig','git-completion.bash','zshrc', 'bash', 'zsh']

dotfiles.each do |file|
  source = File.expand_path(File.join(dotfiles_dir, file))
  target = File.expand_path(File.join(home_dir, ".#{file}"))

  if (File.directory?(source) && File.exist?(target))
    File.delete(target)
  end

  `ln -s #{source} #{target}`
end

# git push on commit
#`echo 'git push' > .git/hooks/post-commit`
#`chmod 755 .git/hooks/post-commit`
