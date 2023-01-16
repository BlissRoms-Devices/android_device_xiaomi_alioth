# Clone/Fetch Upstream Device Dependencies
# Device tree
echo "cloning Common"
git clone https://github.com/NextWork123/device_xiaomi-sm8250-stable device/xiaomi/sm8250-common
echo ""

echo "cloning vendor blobs"
git clone https://github.com/NextWork123/vendor_xiaomi_sm8250-common-stable vendor/xiaomi/sm8250-common
git clone https://github.com/NextWork123/vendor_xiaomi_alioth-stable vendor/xiaomi/alioth
echo ""

# Kernel
echo "cloning kernel and clang"
git clone https://github.com/NextWork123/nexus_kernel_xiaomi_sm8250 kernel/xiaomi/alioth
git clone --depth=1 https://gitlab.com/Roxor-007/WeebX_clang16.git prebuilts/clang/host/linux-x86/clang-WeebX
echo ""

# Leica Camera
echo "Cloning MiuiCamera"
git clone https://gitlab.com/dark.phnx12/android_vendor_xiaomi_alioth-miuicamera.git vendor/xiaomi/alioth-miuicamera 
echo ""

# Dependecies
echo "Cloning Dependencies"
rm -rf hardware/qcom-caf/sm8250/display 
git clone https://github.com/drkphnx/hardware_qcom-caf_sm8250_display.git -b aosp-13 hardware/qcom-caf/sm8250/display 
rm -rf hardware/qcom-caf/sm8250/media 
git clone https://github.com/drkphnx/hardware_qcom-caf_sm8250_media.git -b aosp-13 hardware/qcom-caf/sm8250/media 
rm -rf hardware/qcom-caf/sm8250/audio 
git clone  https://github.com/drkphnx/hardware_qcom-caf_sm8250_audio.git -b aosp-13 hardware/qcom-caf/sm8250/audio
rm -rf hardware/qcom-caf/bootctrl
git clone https://github.com/drkphnx/hardware_qcom-caf_bootctrl.git -b tiramisu  hardware/qcom-caf/bootctrl
rm -rf vendor/qcom/opensource/power
git clone https://github.com/drkphnx/vendor_qcom_opensource_power.git -b tiramisu vendor/qcom/opensource/power
rm -rf hardware/xiaomi
git clone https://github.com/drkphnx/hardware_xiaomi.git -b tiramisu hardware/xiaomi
rm -rf vendor/qcom/opensource/audio-hal/st-hal
git clone https://github.com/PixelExperience/vendor_qcom_opensource_audio-hal_st-hal vendor/qcom/opensource/audio-hal/st-hal
rm -rf external/ant-wireless/antradio-library
git clone https://github.com/VoidUI-CAF/external_ant-wireless_antradio-library.git external/ant-wireless/antradio-library
rm -rf vendor/qcom/opensource/interfaces
git clone https://github.com/drkphnx/vendor_qcom_opensource_interfaces.git -b aosp-13 vendor/qcom/opensource/interfaces
echo ""