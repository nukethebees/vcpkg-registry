vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO nukethebees/containers
    REF v0.2.0
    SHA512 69dea20fa738371a1f32b80e661ed966ba8fc8547ceca6aee4fb4e9a97d196dda85e6cfc3cfce2aaab7017aa0a60c4632496d3ca310fa8c7156bd155d5f82be5
    HEAD_REF master
)

vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}"
)
vcpkg_cmake_install()
vcpkg_cmake_config_fixup(PACKAGE_NAME "containers")
file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")