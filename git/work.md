```js
Enzo@DESKTOP-IFP1VO4 MINGW64 ~/Desktop/jfs (main)
$ git branch --list
* main

Enzo@DESKTOP-IFP1VO4 MINGW64 ~/Desktop/jfs (main)
$ git branch -l
* main

Enzo@DESKTOP-IFP1VO4 MINGW64 ~/Desktop/jfs (main)
$ git branch -M master

Enzo@DESKTOP-IFP1VO4 MINGW64 ~/Desktop/jfs (master)
$ git branch -l
* master

Enzo@DESKTOP-IFP1VO4 MINGW64 ~/Desktop/jfs (master)
$ git branch -m master

Enzo@DESKTOP-IFP1VO4 MINGW64 ~/Desktop/jfs (master)
$ git branch -l
* master

Enzo@DESKTOP-IFP1VO4 MINGW64 ~/Desktop/jfs (master)
$ git branch -M main

Enzo@DESKTOP-IFP1VO4 MINGW64 ~/Desktop/jfs (main)
$ git branch -l
* main

```

:newspaper: **logs** ..  
```sh
Enzo@DESKTOP-IFP1VO4 MINGW64 ~/Desktop/mG/jfs (main)
$ touch painting.txt

Enzo@DESKTOP-IFP1VO4 MINGW64 ~/Desktop/mG/jfs (main)
$ git add .

Enzo@DESKTOP-IFP1VO4 MINGW64 ~/Desktop/mG/jfs (main)
$ git commit -am "Painted"
[main a70a129] Painted
 1 file changed, 0 insertions(+), 0 deletions(-)
 create mode 100644 painting.txt

Enzo@DESKTOP-IFP1VO4 MINGW64 ~/Desktop/mG/jfs (main)
$ touch frame.txt

Enzo@DESKTOP-IFP1VO4 MINGW64 ~/Desktop/mG/jfs (main)
$ git add .

Enzo@DESKTOP-IFP1VO4 MINGW64 ~/Desktop/mG/jfs (main)
$ git commit -am "Framed"
[main bfa588a] Framed
 1 file changed, 0 insertions(+), 0 deletions(-)
 create mode 100644 frame.txt

Enzo@DESKTOP-IFP1VO4 MINGW64 ~/Desktop/mG/jfs (main)
$ git log -3
commit bfa588a7841646790b2bb673e71a9d89aed5d2a6 (HEAD -> main)
Author: mavegituser <livegit2@gmail.com>
Date:   Tue Jan 5 16:32:42 2021 +0530

    Framed

commit a70a129325e9d78deaee3f918acd3c56177e3bda
Author: mavegituser <livegit2@gmail.com>
Date:   Tue Jan 5 16:32:25 2021 +0530

    Painted

commit 2ca575d0014d5bcc4a51926851c3b741062fb5b9
Author: mavegituser <livegit2@gmail.com>
Date:   Tue Jan 5 16:31:02 2021 +0530

    OLD COMMITS

```
