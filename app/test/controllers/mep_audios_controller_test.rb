require 'test_helper'

class MepAudiosControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end
  setup do
    @params_hash = {bsag_project_partial_id: 1,
                                      bsag_audio_type_id: 1,
                                      receiving_date: '2018-06-11',
                                      bsag_mep_version_id: 1,
                                      version_number: 1,
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
                                      bsag_mep_evaluation_id: '1'}
    #@params_project = {}
  end

  test "should show mep_audio" do
    mep = bsag_mep_audios(:one)
    project = tblprojects(:one)
    partial = bsag_project_partials(:one)
    get project_project_partial_mep_audio_url(project, partial, mep)
    assert_responds :succes
  end
end
