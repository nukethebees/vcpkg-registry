set(VCPKG_TARGET_ARCHITECTURE x64)
set(VCPKG_CRT_LINKAGE dynamic)
set(VCPKG_LIBRARY_LINKAGE static)

set(VCPKG_CMAKE_SYSTEM_NAME Linux)

set(VCPKG_CXX_FLAGS_RELEASE "-flto -fuse-linker-plugin -ffat-lto-objects ")
set(VCPKG_C_FLAGS_RELEASE "-flto  -fuse-linker-plugin -ffat-lto-objects ")
set(VCPKG_LINKER_FLAGS_RELEASE "-flto")