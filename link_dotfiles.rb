#!/usr/bin/env ruby

dotfiles_dir = File.dirname(__FILE__)
home_dir = File.expand_path('~')

dotfiles = ['bash_profile','bashrc','gvimrc','vimrc','gitconfig','git-completion.bash','zshrc', 'bash', 'zsh']

dotfiles.each do |file|
  source = File.expand_path(File.join(dotfiles_dir, file))
  target = File.expand_path(File.join(home_dir, ".#{file}"))

  if (File.directory?(source) && File.exist?(target))
    File.delete(target)
  end

  "Linking #{target}"
  `ln -s #{source} #{target}`
end

# special case for my custom oh-my-zsh theme
zsh_theme_filename = 'ddonahue.zsh-theme'
zsh_theme_file = File.expand_path(File.join(dotfiles_dir, 'themes', zsh_theme_filename))
oh_my_zsh_custom_folder = File.expand_path(File.join(home_dir, '.oh-my-zsh', 'custom'))

if (File.exist?(oh_my_zsh_custom_folder))
  puts "Linking custom oh-my-zsh theme."
  `ln -s #{zsh_theme_file} #{File.join(oh_my_zsh_custom_folder, zsh_theme_filename)}`
else
  puts "Could not link to custom oh-my-zsh theme. Please create #{oh_my_zsh_custom_folder}"
end
