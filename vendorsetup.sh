add_lunch_combo omni_arubaslim-userdebug
function multirom_arubaslim
{
lunch omni_arubaslim-userdebug
mka -j4 recoveryimage multirom_zip
cp device/samsung/arubaslim/META-INF.zip out/target/product/arubaslim/META-INF.zip 
cd out/target/product/arubaslim/
unzip META-INF.zip 
rm META-INF.zip 
zip multirom-$(date +%Y%m%d)-3.0.28-UNOFFICIAL-arubaslim.zip -r recovery.img -r META-INF
rm -rf META-INF
cd ../../../../
}
