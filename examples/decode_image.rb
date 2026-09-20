# frozen_string_literal: true

###############################################################################
#
# AZTecDecoder — decode-image
#
# Version        : v2.0.0
# Language       : Ruby
# Author         : Bartosz Wójcik
# Web page       : https://www.pelock.com
#
###############################################################################

$LOAD_PATH.unshift(File.expand_path("../lib", __dir__))
require "aztec-decoder"
require "json"

client = AZTecDecoder.new("YOUR-WEB-API-KEY")
result = client.decode_image_from_file("registration.jpg")
puts JSON.pretty_generate(result) if result
