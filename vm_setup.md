# Tools setup - CS300

1. Download [VirtualBox](https://www.virtualbox.org/wiki/Downloads).
2. Download the image [labvm.ova](https://drive.google.com/file/d/1uLiw4xM1f-EZXiHKBvOlgyR8QitJ_o_K/view?usp=drive_link).
3. In VirtualBox do File→Import Appliance, select the image and finish it by iterating on next button.
4. Start the machine called `labvm`.
5. There is an already created user `vmlab` with password `123456`.
6. There is a predefined port forwarding from your host port 2222 to the VM port 22. Hence, you don't need to work in graphical mode and can SSH into the VM with `ssh -p 2222 vmlab@localhost`.

7. Within the VM, open the terminal either via SSH or GUI.
8. Follow steps to [Generate SSH keys](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent).
9. Follow steps to [Add your keys to your GitHub account](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account).
10. Follow steps to [Test your SSH connection](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/testing-your-ssh-connection).
11. VM is setup. You can clone your assignment repo and start working on it.

If you are paranoid about using preinstalled system, you can install Ubuntu 22.04 (x86-4) on your own and check [post_install.sh](https://gitlab.epfl.ch/cs323/vm/-/blob/main/post_install.sh) to see what was done from our side.


## Setup for Apple M1/M2

1. Install [Multpass](https://multipass.run/install)
2. Launch a new ubuntu image using the followning command: `multipass launch --name cs300`
3. Access the machine using: `multipass exec cs300 -- bash`.
4. Execute the commands in the [post_install.sh](post_install.sh) script inside the VM.
5. Follow steps 8-11 above.

### To enable SSH access for the labVM

1. Run the command `sudo passwd ubuntu` inside the VM and set the password to one of your choice.
2. Follow the steps to [Enable password-based SSH authentication](https://docs.bitnami.com/virtual-machine/faq/get-started/enable-ssh-password/).
3. Get the IP-address of the VM using: `multipass list`
4. SSH into the VM using `ssh ubuntu@IP-ADDRESS` using the password you previously chose when prompted.