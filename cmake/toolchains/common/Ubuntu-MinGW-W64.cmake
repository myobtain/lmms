# Toolchain for Ubuntu MinGw compiler shipped with the mingw-w64 and
# g++-mingw-w64 packages
SET(TOOLCHAIN_PREFIX      ${CMAKE_SYSTEM_PROCESSOR}-w64-mingw32)
set(CMAKE_C_COMPILER      ${TOOLCHAIN_PREFIX}-gcc)
set(CMAKE_CXX_COMPILER    ${TOOLCHAIN_PREFIX}-g++)
set(CMAKE_RC_COMPILER     ${TOOLCHAIN_PREFIX}-windres)

set(MINGW_PREFIX          /usr/${TOOLCHAIN_PREFIX})

set(CMAKE_FIND_ROOT_PATH  ${MINGW_PREFIX})
SET(ENV{PKG_CONFIG}       /usr/bin/${TOOLCHAIN_PREFIX}-pkg-config)

IF(WIN64)
	SET(TOOLCHAIN_PREFIX32   ${CMAKE_SYSTEM_PROCESSOR32}-w64-mingw32)
	SET(CMAKE_C_COMPILER32   ${TOOLCHAIN_PREFIX32}-gcc)
	SET(CMAKE_CXX_COMPILER32 ${TOOLCHAIN_PREFIX32}-g++)
	set(MINGW_PREFIX32       /usr/${TOOLCHAIN_PREFIX32})
ENDIF()

INCLUDE(${CMAKE_CURRENT_LIST_DIR}/WinCrossCompile.cmake)