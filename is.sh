{
    "Groups": [],
    "Instances": [
        {
            "AmiLaunchIndex": 0,
            "ImageId": "ami-09c813fb71547fc4f",
            "InstanceId": "i-0888e1dd4bb54c8bd",
            "InstanceType": "t3.micro",
            "LaunchTime": "2025-09-24T00:57:22+00:00",
            "Monitoring": {
                "State": "disabled"
            },
            "Placement": {
                "AvailabilityZone": "us-east-1b",
                "GroupName": "",
                "Tenancy": "default"
            },
            "PrivateDnsName": "ip-172-31-19-58.ec2.internal",
            "PrivateIpAddress": "172.31.19.58",
            "ProductCodes": [],
            "PublicDnsName": "",
            "State": {
                "Code": 0,
                "Name": "pending"
            },
            "StateTransitionReason": "",
            "SubnetId": "subnet-0c4cbffefbac4d546",
            "VpcId": "vpc-0a8ab50a28afb6fd8",
            "Architecture": "x86_64",
            "BlockDeviceMappings": [],
            "ClientToken": "1624d4dd-385e-4811-ae9e-918c662e02ba",
            "EbsOptimized": false,
            "EnaSupport": true,
            "Hypervisor": "xen",
            "NetworkInterfaces": [
                {
                    "Attachment": {
                        "AttachTime": "2025-09-24T00:57:22+00:00",
                        "AttachmentId": "eni-attach-07c3527b4551b450d",
                        "DeleteOnTermination": true,
                        "DeviceIndex": 0,
                        "Status": "attaching",
                        "NetworkCardIndex": 0
                    },
                    "Description": "",
                    "Groups": [
                        {
                            "GroupName": "allow-all",
                            "GroupId": "sg-074e260911c3a2487"
                        }
                    ],
                    "Ipv6Addresses": [],
                    "MacAddress": "0a:ff:e6:63:0d:2f",
                    "NetworkInterfaceId": "eni-09d31199b0a99ad33",
                    "OwnerId": "485658242739",
                    "PrivateDnsName": "ip-172-31-19-58.ec2.internal",
                    "PrivateIpAddress": "172.31.19.58",
                    "PrivateIpAddresses": [
                        {
                            "Primary": true,
                            "PrivateDnsName": "ip-172-31-19-58.ec2.internal",
                            "PrivateIpAddress": "172.31.19.58"
                        }
                    ],
                    "SourceDestCheck": true,
                    "Status": "in-use",
                    "SubnetId": "subnet-0c4cbffefbac4d546",
                    "VpcId": "vpc-0a8ab50a28afb6fd8",
                    "InterfaceType": "interface"
                }
            ],
            "RootDeviceName": "/dev/sda1",
            "RootDeviceType": "ebs",
            "SecurityGroups": [
                {
                    "GroupName": "allow-all",
                    "GroupId": "sg-074e260911c3a2487"
                }
            ],
            "SourceDestCheck": true,
            "StateReason": {
                "Code": "pending",
                "Message": "pending"
            },
            "Tags": [
                {
                    "Key": "Name",
                    "Value": "Test"
                }
            ],
            "VirtualizationType": "hvm",
            "CpuOptions": {
                "CoreCount": 1,
                "ThreadsPerCore": 2
            },
            "CapacityReservationSpecification": {
                "CapacityReservationPreference": "open"
            },
            "MetadataOptions": {
                "State": "pending",
                "HttpTokens": "optional",
                "HttpPutResponseHopLimit": 1,
                "HttpEndpoint": "enabled",
                "HttpProtocolIpv6": "disabled",
                "InstanceMetadataTags": "disabled"
            },
            "EnclaveOptions": {
                "Enabled": false
            },
            "BootMode": "uefi-preferred",
            "PrivateDnsNameOptions": {
                "HostnameType": "ip-name",
                "EnableResourceNameDnsARecord": false,
                "EnableResourceNameDnsAAAARecord": false
            },
            "MaintenanceOptions": {
                "AutoRecovery": "default"
            },
            "CurrentInstanceBootMode": "uefi"
        }
    ],
    "OwnerId": "485658242739",
    "ReservationId": "r-0f9c849099af0272c"
}
