Zach Banks' personal dotfiles. If you like anything you find, feel free to use it in your own code.
TODO: This README will be updated soon.

The command for making a symbolic link (alias) is 
```bash
  ln -s source link_file
```

You need to update this soon!

Setting Up SSH Public-Key Authentication
===

SSH public-key authentication allows you to not have to use a password when logging into a trusted computer via SSH. 
To setup this, you must do the following steps for each computer you want to be able to login with, without a password.
If you want to be able to login to both computers without using a password, you must do theses steps on both computers.

1. On the source computer, assuming SSH is installed, run `ssh-keygen -t rsa` to generate a public and private key pair using the RSA encryption. Pass `-t dsa` if you want to use DSA encryption instead. It will prompt you where you want to save your public key file (just press enter to use default location) and it will ask if you want to encrypt your public key with a passphrase. If you do, everytime you give someone your public key, you will first have to enter in that passphrase. Otherwise just press enter. By default, on a mac your public key will be saved to `~/.ssh/id_rsa.pub`.

2. Now copy your public key onto your target computer and put into its `~/.ssh/authorized_keys` file. Make sure you append your public key to this file because other public keys may be in there. 

3. Once you do steps 1 and 2, you can now login to your target computer without a password. Note: If you encrypted your public key, you will have to enter the passphrase to connect.