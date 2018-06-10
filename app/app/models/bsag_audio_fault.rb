class BsagAudioFault < ActiveRecord::Base
  has_many :mep_audios, :class_name => "BsagMepAudio"

  validates :name, :presence => true,
            :length => { :maximum => 30 },
            :uniqueness => true
end
