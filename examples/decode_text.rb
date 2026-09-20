# frozen_string_literal: true

###############################################################################
#
# AZTecDecoder — decode-text
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
aztec_ascii = "PASTE-AZTEC-ASCII-HERE"
result = client.decode_text(aztec_ascii)
puts JSON.pretty_generate(result) if result
