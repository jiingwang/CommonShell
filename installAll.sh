#!/bin/bash  

components=('pb-owner-ct-user-me' 'pb-owner-ct-user-bindroom' 'pb-owner-ct-housekeep' 'pb-owner-ct-housekeep-evaluate' 'pb-owner-ct-user-login' 'pb-owner-ct-ninja-home' 'pb-owner-ct-user-setting' 'pb-owner-ct-user-myroom' 'pb-owner-ct-community' 'pb-owner-ct-header' 'pb-owner-ct-user-complaint' 'pb-owner-ct-user-community' 'rental-component-messages' 'pb-owner-ct-push-message' 'pb-owner-ct-repair-apply' 'pb-owner-ct-server-order-list' 'pb-owner-ct-server-order-info' 'pb-owner-ct-info-list' 'pb-owner-ct-notice' 'pb-owner-ct-user-bill')
echo "安装全部组件"

for component in ${components[@]}
do
	echo "正在安装${component}"
	git clone "git@git.mysoft.com.cn:cloudspace/${component}.git"
	echo "安装${component}完成"
done	


