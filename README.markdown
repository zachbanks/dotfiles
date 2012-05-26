Introduction
===
These files consist of Zach Banks' personal dotfiles. The sections in this README are mini tutorials on how to setup things in these dotfiles and is intended to be read by Zach Banks. If anyone is reading them, feel free to use any of the code in your own dotfiles. This READ should be used as a reference in case you forget how to do them.

Table of Contents
==
* [Setup & Configuration][setup]
* [Setup SSH to Use Public-Key Authentication][pk-ssh]

[setup] Setting Up Your System
===
In order to setup a new machine with your dotfiles, do the following ...

1. Make sure Git is installed and use the following command to clone this repo to the directory `~/.dotfiles`.
```bash
	git clone git://github.com/zachbanks/dotfiles.git .dotfiles
```
If you are on a computer that you have setup SSH write access with Github, use the SSH protocol instead, otherwise you will have to delete the remote and re-add it when you want to push to Github.
```bash
	git clone git@github.com:zachbanks/dotfiles.git .dotfiles
```
Once you have the repo on your computer, if this is someone else's computer, make sure you remove the `.git` directory and any other files that you will not need. Also remove any files that contain personal information.

2. Now all you left to do is link up the files in your home folder with your dot files by using the command: 
```bash
  ln -s source_file link_file
```
This creates a symbolic link between the two files. **Note: Do not use relative paths with ln.** In other words, for `source_file` make sure that you use `~/.dotfiles/source_file` and for `link_file` use
`~/.link_file`. If the dotfile already exists in your home directory, make sure you overwrite it by adding the `-f` flag to `ln`: `ln -sf source link`.

[pk-ssh] Setting Up SSH Public-Key Authentication
===

SSH public-key authentication allows you to not have to use a password when logging into a trusted computer via SSH. 
To setup this, you must do the following steps for each computer you want to be able to login with, without a password.
If you want to be able to login to both computers without using a password, you must do theses steps on both computers.

1. On the source computer, assuming SSH is installed, run `ssh-keygen -t rsa` to generate a public and private key pair using the RSA encryption. Pass `-t dsa` if you want to use DSA encryption instead. It will prompt you where you want to save your public key file (just press enter to use default location) and it will ask if you want to encrypt your public key with a passphrase. If you do, everytime you give someone your public key, you will first have to enter in that passphrase. Otherwise just press enter. By default, on a mac your public key will be saved to `~/.ssh/id_rsa.pub`.

2. Now copy your public key onto your target computer and put into its `~/.ssh/authorized_keys` file. Make sure you append your public key to this file because other public keys may be in there. 

3. Once you do steps 1 and 2, you can now login to your target computer without a password. Note: If you encrypted your private key with a passphrase, you will have to enter the passphrase to connect. On a Mac (10.5 or greater I believe), ssh-agent is runs on startup so you will not have to enter your passphrase every time you want connect.