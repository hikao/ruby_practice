#!/usr/bin/ruby

# About FileUtils
 
require 'fileutils'

#puts FileUtils.methods(false)
FileUtils.chmod 0766, 'file_utils.rb'
# file_utils.rbをユーザがfukuzawhでグループがstaffに変更するスクリプト
FileUtils.chown 'fukuzawh', 'staff', 'file_utils.rb'
