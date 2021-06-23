# Wasm Sandbox

This project is a sandbox for a client - server application created with QT for wasm and python + Django for the server. Might as well contain some rust services
This repo is created for learning purposes

### Dependencies
<ul> 
    <li> Qt 5.15.2 </li>
    <li> emsdk 1.39.8 </li>
</ul>

### Build and run

```console
    mkdir build && cd build
    cmake .. -DCMAKE_PREFIX_PATH=~/Qt/5.15.2/wasm_32 -DCMAKE_TOOLCHAIN_FILE=$EMSDK/upstream/emscripten/cmake/Modules/Platform/Emscripten.cmake
    make
```
