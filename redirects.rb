# Redirect all production http traffic to https
r301 %r{.*}, 'https://docs.pivotal.io$&', :if => Proc.new { |rack_env|
  rack_env['SERVER_NAME'] == 'docs.pivotal.io' && rack_env['HTTP_X_FORWARDED_PROTO'] == 'http'
}

# Redirect from docs.pivotal.io/csb-aws/1-0 to docs.vmware.com build service docs

r301  %r{/csb-aws/1-0/index.html}, "https://docs.vmware.com/en/Cloud-Service-Broker-for-AWS/1.0/cloud-service-broker-aws/GUID-index.html"
r301  %r{/csb-aws/1-0/}, "https://docs.vmware.com/en/Cloud-Service-Broker-for-AWS/1.0/cloud-service-broker-aws/GUID-index.html"
r301  %r{/csb-aws/1-0}, "https://docs.vmware.com/en/Cloud-Service-Broker-for-AWS/1.0/cloud-service-broker-aws/GUID-index.html"
r301  %r{/csb-aws/1-0/(.*)}, "https://docs.vmware.com/en/Cloud-Service-Broker-for-AWS/1.0/cloud-service-broker-aws/GUID-$1"
