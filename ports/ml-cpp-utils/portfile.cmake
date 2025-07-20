vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO nukethebees/cpp_utils
    REF v0.2.0
    SHA512 d06204ce138708165880385a382e2215bd8f86685cbf18170fb32f53855404b8b23efd8ca70c506ba5cf5dac677a9140f2c322cc88f193219f715274ff76c6e0
    HEAD_REF master
)

vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}"
)
vcpkg_cmake_install()
vcpkg_cmake_config_fixup(PACKAGE_NAME "ml_cpp_utils")
file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")