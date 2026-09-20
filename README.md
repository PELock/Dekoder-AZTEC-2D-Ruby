# Dekoder AZTEC 2D — Ruby SDK

Ruby SDK for [Dekoder AZTEC 2D](https://www.pelock.com/pl/produkty/dekoder-aztec).

API: https://www.pelock.com/api/aztec-decoder/v1

Author: Bartosz Wójcik / PELock — https://www.pelock.com

## Installation

This gem is not published on RubyGems. Build it locally:

```bash
gem build aztec-decoder.gemspec
gem install aztec-decoder-*.gem
```

Or from a clone without installing:

```ruby
$LOAD_PATH.unshift(File.expand_path("lib", __dir__))
require "aztec-decoder"
```

Uses Ruby stdlib `Net::HTTP` only (no Faraday).

## Usage

```ruby
require "aztec-decoder"

client = AZTecDecoder.new("YOUR-WEB-API-KEY") # empty key allowed
from_image = client.decode_image_from_file("registration.jpg")
from_text = client.decode_text(aztec_ascii)
```

See `examples/`.

Site: https://www.dekoderaztec.pl

An empty key is allowed for demo use. `decode_image_from_file` sends the image as a multipart file.

## License

Apache-2.0. Copyright Bartosz Wójcik / PELock.
