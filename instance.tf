
resource "aws_instance" "pa-245862-ec2" {
    ami                 = var.ami
    instance_type       = var.instance_type
    key_name            = var.key_name
    vpc_security_group_ids = [aws_security_group.permitir-ssh.id]
    private_ip = "10.0.1.10"
    subnet_id = aws_subnet.pa245862-subnet.id
    tags = {
        Name        = "pa-245862-ec2"
        terraform   = "True"
    }
}