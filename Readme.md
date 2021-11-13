# Dotfiles

My collection of personal dotfiles. Mostly to aid me in bootstrapping a new machone, but if you find something useful, great!

# Setting up your Mac

1. Update macOS to the latest version with the App Store
1. [Generate a new public and private SSH key](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent) by running:
   ```sh
    curl https://raw.githubusercontent.com/vinaypuppal/dotfiles/HEAD/scripts/sshsh | sh -s "<your-email-address>"
   ```
1. Clone this repo to ~/.dotfiles with:

   ```
       git clone git@github.com:vinaypuppal/dotfiles.git ~/.dotfiles
   ```

1. Run the installation with:
   ```sh
       ./install && ./scripts/fresh.sh
   ```
1. After mackup is synced with your cloud storage, restore preferences by running `mackup restore`
1. Restart your computer to finalize the process
