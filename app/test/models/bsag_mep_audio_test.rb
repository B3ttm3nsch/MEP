require 'test_helper'

class BsagMepAudioTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  setup do
    @mep = BsagMepAudio.new(bsag_project_partial_id: 1,
                           bsag_audio_type_id: 1,
                           receiving_date: '2018-06-11',
                           bsag_mep_version_id: 1,
                           version_number: 2,
                           version_name_ext: 'name_ext',
                           bsag_audio_format_id: 1,
                           bsag_audio_speed_id: 1,
                           is_complete: 0,
                           is_complete_comment: 'vollständig',
                           is_in_sync: 1,
                           is_in_sync_comment: 'synchron',
                           dbtp_max: '1.1',
                           lra: '1.2',
                           lufs: '1.3',
                           bsag_channel_error_id: 1,
                           channel_error_comment: 'Kanal',
                           bsag_audio_fault_id: 1,
                           audio_fault_comment: 'Störung',
                           bsag_mep_evaluation_id: '1')
  end

  test "should save with validate data" do
    mep = @mep
    assert mep.save
  end

  test "should not save invalid version_name" do
    mep = @mep
    mep.version_name_ext = '1234567890123456789012345678901'
    assert_not mep.save
  end

  test "should not save invalid dbtp_max" do
    mep = @mep
    mep.dbtp_max = 1.23
    assert_not mep.save
  end

  test "should not save invalid lra" do
    mep = @mep
    mep.lra = 'dafds'
    assert_not mep.save
  end

  test "should not save invalid lufs" do
    mep = @mep
    mep.lufs = '100'
    assert_not mep.save
  end

end
