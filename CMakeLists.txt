cmake_minimum_required(VERSION 3.10)
project(lab03_homework)

add_subdirectory(formatter_lib)
add_subdirectory(formatter_ex_lib)
add_subdirectory(solver_lib)
add_subdirectory(solver_application)
add_subdirectory(hello_world_application)

set(CPACK_PACKAGE_NAME "lab061")
set(CPACK_PACKAGE_VERSION "1.0.0")
set(CPACK_DEBIAN_PACKAGE_MAINTAINER "Olegium")
set(CPACK_GENERATOR DEB RPM WIX DragNDrop TGZ ZIP)
include(CPack)
