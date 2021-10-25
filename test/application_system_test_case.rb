require "test_helper"

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  driven_by :selenium, using: :headless_chrome, screen_size: [1400, 768]

  def turn_off_direct_upload
    page.execute_script 'document.querySelectorAll("input[data-direct-upload-url]:not([data-direct-upload-url=\"\"])").forEach((input) => { delete input.dataset.directUploadUrl } )'
  end
end
