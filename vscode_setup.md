# VSCode setup to access VM over SSH with VirtualBox

1. Add the following lines to `/home/$USERNAME/.ssh/config` in your host machine:

```bash
Host cs300vm
  HostName 127.0.0.1
  User labvm 
  Port 2222
```

2. Install the [Remote-SSH Extension](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-ssh).

3. In VS Code, select `Remote-SSH: Connect to Host...` from the Command Palette (F1, Ctrl+Shift+P) and use `labvm`.

4. Enter VM password: `123456`.

You should now be able to access all the files and run the commands inside the VM.

# VSCode setup to access VM over SSH with Multipass

1. Get the $IPAddress of the VM with the command `multipass list`
   
2. Add the following lines to `/home/$USERNAME/.ssh/config` in your host machine:

```bash
Host labvm
  HostName $IPAddress
  User ubuntu
```
3. Install the [Remote-SSH Extension](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-ssh).

4. In VS Code, select `Remote-SSH: Connect to Host...` from the Command Palette (F1, Ctrl+Shift+P) and use `labvm`.
   
5. Enter VM password (you previously chose)
   
You should now be able to access all the files and run the commands inside the VM.
