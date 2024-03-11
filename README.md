# Java class library loading is bullshit


Java libraries loaded via System.loadLibrary are loaded from `-Djava.library.path`. Dependencies of those libraries are instead loaded from `$LD_LIBRARY_PATH` like normal dynamic libraries. Fun fact: you cannot (using normal java methods) change `LD_LIBRARY_PATH` but you can change `java.library.path`.

In this repository i demonstrate those issues: 

Use `make runJLP` to test setting the `java.library.path`. Use `make runJLPDeps` to test setting the `java.library.path` and to first `System.loadLibrary` the dependency library. Use `make runLDP` to test setting `LD_LIBRARY_PATH`.

## WHY GIVE US `java.library.path` IF YOU AREN'T GONNA MAKE PROPER USE OF IT JNI SPEC?? WHY?




