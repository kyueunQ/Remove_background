puts ENV["AWS_ACCESS_KEY_ID"]
CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'                        
  config.fog_credentials = {
    provider:              'AWS',                       
    aws_access_key_id:     ENV["KEY_ID"],    
    aws_secret_access_key: ENV["SECRET_KEY"], 
    region:                'ap-northeast-2',                
   # host:                  's3.example.com',            
    endpoint:              'https://s3.ap-northeast-2.amazonaws.com' 
  }
  config.fog_directory  = ENV["S3_BUCKET_NAME"]         
end