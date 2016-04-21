#--------------------------------------------------------------
# Instance
#--------------------------------------------------------------
resource "terraform_remote_state" "example" {
    backend = "atlas"
    config {
        name = "anubhavmishra/example"
    }
}

resource "aws_eip" "lb" {
    instance = "${terraform_remote_state.example.output.instance_id}"
}