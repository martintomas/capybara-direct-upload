# frozen_string_literal: true

require "application_system_test_case"

class UploadsSystemTest < ApplicationSystemTestCase
  test '#create' do
    visit new_upload_path
    turn_off_direct_upload # hack!
    attach_file 'upload[file]', "#{file_fixture_path}/image.png"
    click_on 'Upload'

    assert_selector 'body', text: 'SUCCESS'
  end
end
