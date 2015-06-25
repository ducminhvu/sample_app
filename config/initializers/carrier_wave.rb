if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_credentials = {
      # Configuration for Amazon S3
      :provider              => 'AWS',
      :aws_access_key_id     => 'AKIAIHGPGEVCCOPORGXA',
      :aws_secret_access_key => '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'
    }
    config.fog_directory     =  'railsexample'
  end
end