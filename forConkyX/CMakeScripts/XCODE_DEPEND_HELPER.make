# DO NOT EDIT
# This makefile makes sure all linkable targets are
# up-to-date with anything they link to
default:
	echo "Do not invoke directly"

# Rules to remove targets that are older than anything to which they
# link.  This forces Xcode to relink the targets from scratch.  It
# does not seem to check these dependencies itself.
PostBuild.conky.Debug:
PostBuild.toluapp_lib_static.Debug: /Users/npyl/Manage-Conky/ConkyX/conky-for-macOS/forConkyX/src/Debug/conky
/Users/npyl/Manage-Conky/ConkyX/conky-for-macOS/forConkyX/src/Debug/conky:\
	/usr/local/lib/libintl.dylib\
	/usr/lib/libcurses.dylib\
	/usr/lib/libform.dylib\
	/usr/X11R6/lib/libSM.dylib\
	/usr/X11R6/lib/libICE.dylib\
	/usr/X11R6/lib/libX11.dylib\
	/usr/X11R6/lib/libXext.dylib\
	/usr/X11R6/lib/libXft.dylib\
	/usr/X11R6/lib/libXext.dylib\
	/usr/lib/libxml2.dylib\
	/Users/npyl/Manage-Conky/ConkyX/conky-for-macOS/forConkyX/3rdparty/toluapp/Debug/libtoluapp.a\
	/usr/X11R6/lib/libXinerama.dylib\
	/usr/X11R6/lib/libXft.dylib\
	/usr/lib/libxml2.dylib\
	/usr/X11R6/lib/libXinerama.dylib
	/bin/rm -f /Users/npyl/Manage-Conky/ConkyX/conky-for-macOS/forConkyX/src/Debug/conky


PostBuild.toluapp.Debug:
PostBuild.toluapp_lib_static.Debug: /Users/npyl/Manage-Conky/ConkyX/conky-for-macOS/forConkyX/3rdparty/toluapp/Debug/toluapp
/Users/npyl/Manage-Conky/ConkyX/conky-for-macOS/forConkyX/3rdparty/toluapp/Debug/toluapp:\
	/Users/npyl/Manage-Conky/ConkyX/conky-for-macOS/forConkyX/3rdparty/toluapp/Debug/libtoluapp.a
	/bin/rm -f /Users/npyl/Manage-Conky/ConkyX/conky-for-macOS/forConkyX/3rdparty/toluapp/Debug/toluapp


PostBuild.toluapp_lib_static.Debug:
/Users/npyl/Manage-Conky/ConkyX/conky-for-macOS/forConkyX/3rdparty/toluapp/Debug/libtoluapp.a:
	/bin/rm -f /Users/npyl/Manage-Conky/ConkyX/conky-for-macOS/forConkyX/3rdparty/toluapp/Debug/libtoluapp.a


PostBuild.conky.Release:
PostBuild.toluapp_lib_static.Release: /Users/npyl/Manage-Conky/ConkyX/conky-for-macOS/forConkyX/src/Release/conky
/Users/npyl/Manage-Conky/ConkyX/conky-for-macOS/forConkyX/src/Release/conky:\
	/usr/local/lib/libintl.dylib\
	/usr/lib/libcurses.dylib\
	/usr/lib/libform.dylib\
	/usr/X11R6/lib/libSM.dylib\
	/usr/X11R6/lib/libICE.dylib\
	/usr/X11R6/lib/libX11.dylib\
	/usr/X11R6/lib/libXext.dylib\
	/usr/X11R6/lib/libXft.dylib\
	/usr/X11R6/lib/libXext.dylib\
	/usr/lib/libxml2.dylib\
	/Users/npyl/Manage-Conky/ConkyX/conky-for-macOS/forConkyX/3rdparty/toluapp/Release/libtoluapp.a\
	/usr/X11R6/lib/libXinerama.dylib\
	/usr/X11R6/lib/libXft.dylib\
	/usr/lib/libxml2.dylib\
	/usr/X11R6/lib/libXinerama.dylib
	/bin/rm -f /Users/npyl/Manage-Conky/ConkyX/conky-for-macOS/forConkyX/src/Release/conky


PostBuild.toluapp.Release:
PostBuild.toluapp_lib_static.Release: /Users/npyl/Manage-Conky/ConkyX/conky-for-macOS/forConkyX/3rdparty/toluapp/Release/toluapp
/Users/npyl/Manage-Conky/ConkyX/conky-for-macOS/forConkyX/3rdparty/toluapp/Release/toluapp:\
	/Users/npyl/Manage-Conky/ConkyX/conky-for-macOS/forConkyX/3rdparty/toluapp/Release/libtoluapp.a
	/bin/rm -f /Users/npyl/Manage-Conky/ConkyX/conky-for-macOS/forConkyX/3rdparty/toluapp/Release/toluapp


PostBuild.toluapp_lib_static.Release:
/Users/npyl/Manage-Conky/ConkyX/conky-for-macOS/forConkyX/3rdparty/toluapp/Release/libtoluapp.a:
	/bin/rm -f /Users/npyl/Manage-Conky/ConkyX/conky-for-macOS/forConkyX/3rdparty/toluapp/Release/libtoluapp.a


PostBuild.conky.MinSizeRel:
PostBuild.toluapp_lib_static.MinSizeRel: /Users/npyl/Manage-Conky/ConkyX/conky-for-macOS/forConkyX/src/MinSizeRel/conky
/Users/npyl/Manage-Conky/ConkyX/conky-for-macOS/forConkyX/src/MinSizeRel/conky:\
	/usr/local/lib/libintl.dylib\
	/usr/lib/libcurses.dylib\
	/usr/lib/libform.dylib\
	/usr/X11R6/lib/libSM.dylib\
	/usr/X11R6/lib/libICE.dylib\
	/usr/X11R6/lib/libX11.dylib\
	/usr/X11R6/lib/libXext.dylib\
	/usr/X11R6/lib/libXft.dylib\
	/usr/X11R6/lib/libXext.dylib\
	/usr/lib/libxml2.dylib\
	/Users/npyl/Manage-Conky/ConkyX/conky-for-macOS/forConkyX/3rdparty/toluapp/MinSizeRel/libtoluapp.a\
	/usr/X11R6/lib/libXinerama.dylib\
	/usr/X11R6/lib/libXft.dylib\
	/usr/lib/libxml2.dylib\
	/usr/X11R6/lib/libXinerama.dylib
	/bin/rm -f /Users/npyl/Manage-Conky/ConkyX/conky-for-macOS/forConkyX/src/MinSizeRel/conky


PostBuild.toluapp.MinSizeRel:
PostBuild.toluapp_lib_static.MinSizeRel: /Users/npyl/Manage-Conky/ConkyX/conky-for-macOS/forConkyX/3rdparty/toluapp/MinSizeRel/toluapp
/Users/npyl/Manage-Conky/ConkyX/conky-for-macOS/forConkyX/3rdparty/toluapp/MinSizeRel/toluapp:\
	/Users/npyl/Manage-Conky/ConkyX/conky-for-macOS/forConkyX/3rdparty/toluapp/MinSizeRel/libtoluapp.a
	/bin/rm -f /Users/npyl/Manage-Conky/ConkyX/conky-for-macOS/forConkyX/3rdparty/toluapp/MinSizeRel/toluapp


PostBuild.toluapp_lib_static.MinSizeRel:
/Users/npyl/Manage-Conky/ConkyX/conky-for-macOS/forConkyX/3rdparty/toluapp/MinSizeRel/libtoluapp.a:
	/bin/rm -f /Users/npyl/Manage-Conky/ConkyX/conky-for-macOS/forConkyX/3rdparty/toluapp/MinSizeRel/libtoluapp.a


PostBuild.conky.RelWithDebInfo:
PostBuild.toluapp_lib_static.RelWithDebInfo: /Users/npyl/Manage-Conky/ConkyX/conky-for-macOS/forConkyX/src/RelWithDebInfo/conky
/Users/npyl/Manage-Conky/ConkyX/conky-for-macOS/forConkyX/src/RelWithDebInfo/conky:\
	/usr/local/lib/libintl.dylib\
	/usr/lib/libcurses.dylib\
	/usr/lib/libform.dylib\
	/usr/X11R6/lib/libSM.dylib\
	/usr/X11R6/lib/libICE.dylib\
	/usr/X11R6/lib/libX11.dylib\
	/usr/X11R6/lib/libXext.dylib\
	/usr/X11R6/lib/libXft.dylib\
	/usr/X11R6/lib/libXext.dylib\
	/usr/lib/libxml2.dylib\
	/Users/npyl/Manage-Conky/ConkyX/conky-for-macOS/forConkyX/3rdparty/toluapp/RelWithDebInfo/libtoluapp.a\
	/usr/X11R6/lib/libXinerama.dylib\
	/usr/X11R6/lib/libXft.dylib\
	/usr/lib/libxml2.dylib\
	/usr/X11R6/lib/libXinerama.dylib
	/bin/rm -f /Users/npyl/Manage-Conky/ConkyX/conky-for-macOS/forConkyX/src/RelWithDebInfo/conky


PostBuild.toluapp.RelWithDebInfo:
PostBuild.toluapp_lib_static.RelWithDebInfo: /Users/npyl/Manage-Conky/ConkyX/conky-for-macOS/forConkyX/3rdparty/toluapp/RelWithDebInfo/toluapp
/Users/npyl/Manage-Conky/ConkyX/conky-for-macOS/forConkyX/3rdparty/toluapp/RelWithDebInfo/toluapp:\
	/Users/npyl/Manage-Conky/ConkyX/conky-for-macOS/forConkyX/3rdparty/toluapp/RelWithDebInfo/libtoluapp.a
	/bin/rm -f /Users/npyl/Manage-Conky/ConkyX/conky-for-macOS/forConkyX/3rdparty/toluapp/RelWithDebInfo/toluapp


PostBuild.toluapp_lib_static.RelWithDebInfo:
/Users/npyl/Manage-Conky/ConkyX/conky-for-macOS/forConkyX/3rdparty/toluapp/RelWithDebInfo/libtoluapp.a:
	/bin/rm -f /Users/npyl/Manage-Conky/ConkyX/conky-for-macOS/forConkyX/3rdparty/toluapp/RelWithDebInfo/libtoluapp.a




# For each target create a dummy ruleso the target does not have to exist
/Users/npyl/Manage-Conky/ConkyX/conky-for-macOS/forConkyX/3rdparty/toluapp/Debug/libtoluapp.a:
/Users/npyl/Manage-Conky/ConkyX/conky-for-macOS/forConkyX/3rdparty/toluapp/MinSizeRel/libtoluapp.a:
/Users/npyl/Manage-Conky/ConkyX/conky-for-macOS/forConkyX/3rdparty/toluapp/RelWithDebInfo/libtoluapp.a:
/Users/npyl/Manage-Conky/ConkyX/conky-for-macOS/forConkyX/3rdparty/toluapp/Release/libtoluapp.a:
/usr/X11R6/lib/libICE.dylib:
/usr/X11R6/lib/libSM.dylib:
/usr/X11R6/lib/libX11.dylib:
/usr/X11R6/lib/libXext.dylib:
/usr/X11R6/lib/libXft.dylib:
/usr/X11R6/lib/libXinerama.dylib:
/usr/lib/libcurses.dylib:
/usr/lib/libform.dylib:
/usr/lib/libxml2.dylib:
/usr/local/lib/libintl.dylib:
