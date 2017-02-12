STRING(SUBSTRING ${CGET_MSVC_RUNTIME} 1 2 WX_MSVC)
CGET_HAS_DEPENDENCY(wxWidgets GITHUB wxWidgets/wxWidgets VERSION v3.1.0 NO_FIND_PACKAGE
					SOLUTION_FILE build/msw/wx_vc${WX_MSVC}.sln 					
					SOLUTION_INC_DIRS "include;include/msvc")
					
set(_WX_ARCH "")
set(_WX_TOOL vc)
set(_WX_TOOLVER "${WX_MSVC}0")
if(CMAKE_SIZEOF_VOID_P EQUAL 8)
	set(_WX_ARCH _x64)
endif()

FILE(COPY "${CGET_wxWidgets_REPO_DIR}/lib/vc_lib/" DESTINATION "${CGET_INSTALL_DIR}/lib/${_WX_TOOL}${_WX_TOOLVER}${_WX_ARCH}_lib")
set(ARGS_NO_FIND_PACKAGE OFF)
