# frozen_string_literal: true

class AZTecDecoder
  API_URL = "https://www.pelock.com/api/aztec-decoder/v1"
  USER_AGENT = "PELock AZTecDecoder"

  def initialize(api_key = nil)
    @api_key = api_key.to_s
  end

  def decode_text(text)
    post_request("command" => "decode-text", "text" => text)
  end

  def decode_text_from_file(text_file_path)
    data = File.read(text_file_path, encoding: "UTF-8")
    decode_text(data)
  rescue StandardError
    nil
  end

  def decode_image_from_file(image_file_path)
    post_request("command" => "decode-image", image_path: image_file_path)
  end

  private

  def post_request(params)
    # Empty activation key is allowed (demo), unlike the older PHP SDK.
    fields = {
      "key" => @api_key,
      "command" => params["command"]
    }
    files = {}

    if params[:image_path]
      path = params[:image_path]
      return nil unless File.file?(path)

      files["image"] = { path: path, filename: File.basename(path) }
    else
      fields["text"] = params["text"]
    end

    body = Http.post_multipart(API_URL, fields, user_agent: USER_AGENT, files: files)
    return nil if body.nil? || body.empty?

    Http.parse_json(body)
  end
end
