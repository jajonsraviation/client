set( APPLICATION_NAME       "ownCloud" )
#set( APPLICATION_SHORTNAME  ${APPLICATION_NAME} )
set( APPLICATION_EXECUTABLE "owncloud" )
set( APPLICATION_DOMAIN     "owncloud.com" )
set( APPLICATION_VENDOR     "ownCloud" )
set( APPLICATION_UPDATE_URL "https://updates.owncloud.com/client/" CACHE string "URL for updater" )

set( THEME_CLASS            "ownCloudTheme" )
set( APPLICATION_REV_DOMAIN "com.owncloud.desktopclient" )
set( WIN_SETUP_BITMAP_PATH  "${CMAKE_SOURCE_DIR}/admin/win/nsi" )
# set( THEME_INCLUDE          "${OEM_THEME_DIR}/mytheme.h" )
# set( APPLICATION_LICENSE    "${OEM_THEME_DIR}/license.txt )


# please ignore the 5 lines below this
# need this logic to not mess with re/uninstallations via macosx.pkgproj
if(${APPLICATION_REV_DOMAIN} STREQUAL "com.owncloud.desktopclient")
    set(APPLICATION_REV_DOMAIN_INSTALLER "com.ownCloud.client")
else()
set(APPLICATION_REV_DOMAIN_INSTALLER ${APPLICATION_REV_DOMAIN})
endif()