This project uses the SSH implemented by the 'ssh-pascal' library
https://github.com/pyscripter/Ssh-Pascal

If you receive a message like 'the authenticity of host <host> can't be established', please, read this post:
https://superuser.com/questions/421074/ssh-the-authenticity-of-host-host-cant-be-established

The ssh-pascal library doesn't handle adding the host to the known_hosts configuration, so you can add it manually before the first connection using:

> ssh-keyscan -t rsa <host>

Add the results to the known_hosts file:

Linux: ~/.ssh/known_hosts
Windows: %USERPROFILE%\.ssh\known_hosts
