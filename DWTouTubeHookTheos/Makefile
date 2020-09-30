# export THEOS_DEVICE_IP   = 192.168.2.194    # 注入手机ip地址 (家里)
# export THEOS_DEVICE_IP   = 192.168.3.58      # 注入手机ip地址 （公司）
export THEOS_DEVICE_IP   = 127.0.0.1     # 注入手机ip地址 （公司）
export THEOS_DEVICE_PORT = 10010			# 注入手机端口号

include /Users/dingwei/theos/makefiles/common.mk

TARGET := iphone:clang:latest:9.0
TWEAK_NAME = youtube_hook
youtube_hook_FILES = Tweak.x


include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
