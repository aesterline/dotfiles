function sso -a cmd --description 'login to aws sso'
  switch "$cmd"
    case logout
      aws sso logout
      set -ge AWS_PROFILE
      set -ge AWS_REGION
    
    case "*"
      set -gx AWS_PROFILE $argv
      set -gx AWS_REGION "us-east-1"
      aws sts get-caller-identity &> /dev/null; or aws sso login; and yawsso -p $argv
  end
end
