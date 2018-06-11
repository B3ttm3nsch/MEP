class BsagMepAudio < ActiveRecord::Base
  belongs_to :project_partial, :class_name => "BsagProjectPartial", foreign_key: "bsag_project_partial_id"
  belongs_to :audio_type, :class_name => "BsagAudioType", foreign_key: "bsag_audio_type_id"
  belongs_to :mep_version, :class_name => "BsagMepVersion", foreign_key: "bsag_mep_version_id"
  belongs_to :audio_format, :class_name => "BsagAudioFormat", foreign_key: "bsag_audio_format_id"
  belongs_to :audio_speed, :class_name => "BsagAudioSpeed", foreign_key: "bsag_audio_speed_id"
  belongs_to :channel_error, :class_name => "BsagChannelError", foreign_key: "bsag_channel_error_id"
  belongs_to :audio_faults, :class_name => "BsagAudioFault", foreign_key: "bsag_audio_fault_id"
  belongs_to :evaluation, :class_name => "BsagMepEvaluation", foreign_key: "bsag_mep_evaluation_id"

  validates :version_number, :uniqueness => { :scope => [:project_partial, :audio_type, :mep_version] }
  validates :dbtp_max_before_type_cast,
            :numericality => { only_decimal: true  },
            :allow_blank => true,
            :format => { :with => /\A[+-]?\d{0,2}(?!\d)(.\d{0,1})?\z/ }
  validates :lra_before_type_cast,
            :numericality => { only_decimal: true  },
            :allow_blank => true,
            :format => { :with => /\A[+-]?\d{0,2}(?!\d)(.\d{0,1})?\z/ }
  validates :lufs_before_type_cast,
            :numericality => { only_decimal: true  },
            :allow_blank => true,
            :format => { :with => /\A[+-]?\d{0,2}(?!\d)(.\d{0,1})?\z/ }
  validates_length_of :version_name_ext, :maximum => 30
  validates_length_of :is_complete_comment,
                      :is_in_sync_comment,
                      :channel_error_comment,
                      :audio_fault_comment,
                      :maximum => 255
end
