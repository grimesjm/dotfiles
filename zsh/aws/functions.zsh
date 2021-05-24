awsokta () {
	unset AWS_ACCESS_KEY_ID
	unset AWS_SECRET_ACCESS_KEY
	unset AWS_SESSION_TOKEN
	unset AWS_SECURITY_TOKEN
	unset AWS_REGION
	unset AWS_DEFAULT_REGION
	unset AWS_PROFILE
	unset AWS_OKTA_PROFILE
	unset AWS_OKTA_ASSUMED_ROLE_ARN
	unset AWS_OKTA_SESSION_EXPIRATION
	unset AWS_OKTA_ASSUMED_ROLE
	eval $(aws-okta env $1 -t 8h)
}


awsRDSReadOnlyConnect () {
  export RDS_WRITER_ENDPOINT=$(aws rds describe-db-cluster-endpoints  --query "DBClusterEndpoints[?contains(DBClusterIdentifier,\`$2\`) && EndpointType == \`WRITER\` && !contains(DBClusterIdentifier, \`replica\`) ]".Endpoint --output text)
  export RDS_READER_ENDPOINT=$(aws rds describe-db-cluster-endpoints  --query "DBClusterEndpoints[?contains(DBClusterIdentifier,\`$2\`) && EndpointType ==\`READER\` && !contains(DBClusterIdentifier, \`replica\`) ]".Endpoint --output text)
  export TOKEN="$(aws rds generate-db-auth-token --hostname $RDS_READER_ENDPOINT --port 3306 --region us-east-1 --username $1 --output text)"
  echo "The reader endpoint the token is generated for is: $RDS_READER_ENDPOINT"
  echo "The token:  $TOKEN"
  echo ""
  echo "--------------------------------------------------------------------------------------------------------------------------------"
  echo "--------------------------------------------------------------------------------------------------------------------------------"
  echo "--------------------------------------------------------------------------------------------------------------------------------"
  echo "---------------------------------THIS WAS GENERATED IN $AWS_OKTA_PROFILE---------------------------------------------------------"
  echo "--------------------------------------------------------------------------------------------------------------------------------"
  echo "--------------------------------------------------------------------------------------------------------------------------------"
  echo "--------------------------------------------------------------------------------------------------------------------------------"

}