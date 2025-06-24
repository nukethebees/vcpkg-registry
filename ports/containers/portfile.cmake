vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO nukethebees/containers
    REF v0.4.0
    SHA512 6f78bc10097af8ef6096cc0041dea846654f347112c54f0269133383da59c22b266a0dec89be68ebc1b2337b546eb95b463c64d82b88e8c59e3c8615714d0eb2
    HEAD_REF master
)

vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}"
)
vcpkg_cmake_install()
vcpkg_cmake_config_fixup(PACKAGE_NAME "containers")
file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")