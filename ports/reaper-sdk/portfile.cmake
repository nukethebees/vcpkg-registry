vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO justinfrankel/reaper-sdk
    REF cde283eea2d82e19e473062649a95dc0e799fe37
    SHA512 0a889a03b01877bfccbf83e04448b8e8b70295ec28f1267346a9a817917f007beddc8f631dc7bc24dcfc5b8f6f8e7c07c0df2e218b509bbdd1cbe186fa49aabf
    HEAD_REF master
)

set(REAPER_SDK_INCLUDE_DIR ${SOURCE_PATH}/sdk)

file(
    INSTALL ${REAPER_SDK_INCLUDE_DIR}/reaper_plugin.h 
    DESTINATION ${CURRENT_PACKAGES_DIR}/include
)
file(
    INSTALL ${REAPER_SDK_INCLUDE_DIR}/reaper_plugin_functions.h
    DESTINATION ${CURRENT_PACKAGES_DIR}/include
)

set(VCPKG_POLICY_SKIP_COPYRIGHT_CHECK enabled)