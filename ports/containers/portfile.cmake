vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO nukethebees/containers
    REF v0.4.1
    SHA512 48e663cf6a87bd58f7a773b5abc58b98ac7fe2b7b690f63555c179c090873d439f9f8f0bb7fd3f163b523ee9a479881f5beb1167ec14ddf65ddd351b54a956dd
    HEAD_REF master
)

vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}"
)
vcpkg_cmake_install()
vcpkg_cmake_config_fixup(PACKAGE_NAME "containers")
file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")