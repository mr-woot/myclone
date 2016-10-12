# myclone

This is a simple script to solve the everyday problem of cloning github repository into a custom folder,
but without github history.I googled around a lot and came to know that to solve this problem, there are
many possible solutions.
But the easiest of all is to fetch the repository with ``git clone`` and remove the ``.git`` folder inside
the cloned repository.

## Steps to add this script in Linux:
- Download ``myclone.sh``.
- Go to terminal [By default, it is home directory], if not then type ``cd ~`` or ``cd /home/$(whoami)/``.
- Edit the ``.bashrc`` [if exists else create] using any text editor.
- Add ``export PATH="path-to-myclone.sh-root-directory/:$PATH"`` and ``alias myclone='myclone.sh'``
  to the .bashrc file.<br>
  **In case of mine: ``export PATH="~/Desktop/scripts/:$PATH"`` [scripts folder contains myclone.sh]**
- That's it you're done.

## Usage:
- Open terminal.
- Type ``myclone <git-username> <repo name only> <directory name>``
- If want to enter only repo name and dir name, follow the script.sh comments.
