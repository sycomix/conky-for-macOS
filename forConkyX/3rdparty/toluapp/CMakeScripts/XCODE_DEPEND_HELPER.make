# DO NOT EDIT
# This makefile makes sure all linkable targets are
# up-to-date with anything they link to
default:
	echo "Do not invoke directly"

# Rules to remove targets that are older than anything to which they
# link.  This forces Xcode to relink the targets from scratch.  It
# does not seem to check these dependencies itself.
PostBuild.toluapp.Debug:
PostBuild.toluapp_lib_static.Debug: /Users/npyl/Manage-Conky/ConkyX/conky-for-macOS/forConkyX/3rdparty/toluapp/Debug/toluapp
/Users/npyl/Manage-Conky/ConkyX/conky-for-macOS/forConkyX/3rdparty/toluapp/Debug/toluapp:\
	/Users/npyl/Manage-Conky/ConkyX/conky-for-macOS/forConkyX/3rdparty/toluapp/Debug/libtoluapp.a
	/bin/rm -f /Users/npyl/Manage-Conky/ConkyX/conky-for-macOS/forConkyX/3rdparty/toluapp/Debug/toluapp


PostBuild.toluapp_lib_static.Debug:
/Users/npyl/Manage-Conky/ConkyX/conky-for-macOS/forConkyX/3rdparty/toluapp/Debug/libtoluapp.a:
	/bin/rm -f /Users/npyl/Manage-Conky/ConkyX/conky-for-macOS/forConkyX/3rdparty/toluapp/Debug/libtoluapp.a


PostBuild.toluapp.Release:
PostBuild.toluapp_lib_static.Release: /Users/npyl/Manage-Conky/ConkyX/conky-for-macOS/forConkyX/3rdparty/toluapp/Release/toluapp
/Users/npyl/Manage-Conky/ConkyX/conky-for-macOS/forConkyX/3rdparty/toluapp/Release/toluapp:\
	/Users/npyl/Manage-Conky/ConkyX/conky-for-macOS/forConkyX/3rdparty/toluapp/Release/libtoluapp.a
	/bin/rm -f /Users/npyl/Manage-Conky/ConkyX/conky-for-macOS/forConkyX/3rdparty/toluapp/Release/toluapp


PostBuild.toluapp_lib_static.Release:
/Users/npyl/Manage-Conky/ConkyX/conky-for-macOS/forConkyX/3rdparty/toluapp/Release/libtoluapp.a:
	/bin/rm -f /Users/npyl/Manage-Conky/ConkyX/conky-for-macOS/forConkyX/3rdparty/toluapp/Release/libtoluapp.a


PostBuild.toluapp.MinSizeRel:
PostBuild.toluapp_lib_static.MinSizeRel: /Users/npyl/Manage-Conky/ConkyX/conky-for-macOS/forConkyX/3rdparty/toluapp/MinSizeRel/toluapp
/Users/npyl/Manage-Conky/ConkyX/conky-for-macOS/forConkyX/3rdparty/toluapp/MinSizeRel/toluapp:\
	/Users/npyl/Manage-Conky/ConkyX/conky-for-macOS/forConkyX/3rdparty/toluapp/MinSizeRel/libtoluapp.a
	/bin/rm -f /Users/npyl/Manage-Conky/ConkyX/conky-for-macOS/forConkyX/3rdparty/toluapp/MinSizeRel/toluapp


PostBuild.toluapp_lib_static.MinSizeRel:
/Users/npyl/Manage-Conky/ConkyX/conky-for-macOS/forConkyX/3rdparty/toluapp/MinSizeRel/libtoluapp.a:
	/bin/rm -f /Users/npyl/Manage-Conky/ConkyX/conky-for-macOS/forConkyX/3rdparty/toluapp/MinSizeRel/libtoluapp.a


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
