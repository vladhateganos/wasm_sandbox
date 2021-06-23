cmake_minimum_required(VERSION 3.18)

project(client)

if(EMSCRIPTEN)
  include(cmake/wasm.cmake)
endif()

# Instruct CMake to run moc automatically when needed.
set(CMAKE_AUTOMOC ON)

# Find the Qt libraries for Qt Quick/QML
find_package(Qt5 REQUIRED Qml Quick Gui QmlImportScanner)

# add the qml.qrc file
qt5_add_resources(qml_QRC ${CMAKE_CURRENT_SOURCE_DIR}/qml/qml.qrc)

# add source files
set(SOURCES
    src/main.cpp
)

# Tell CMake to create the helloworld executable
add_executable(${PROJECT_NAME} ${SOURCES} ${qml_QRC})

# Use the Qml/Quick modules from Qt 5.
target_link_libraries(${PROJECT_NAME} PRIVATE Qt5::Qml Qt5::Quick)
qt5_import_qml_plugins(${PROJECT_NAME})

if(EMSCRIPTEN)
  link_qt_static(${PROJECT_NAME})
endif()
