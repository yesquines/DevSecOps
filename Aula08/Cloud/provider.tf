// Configurando a autenticacao no Google
provider "google" {
	credentials = "${file("key.json")}"
	project     = "<project_id>"
	region      = "us-central1"
}

resource "google_project" "<project_name>" {
  	name = "<project_name>"
  	project_id = "<project_id>"
}

// Criando Regra de Firewall
resource "google_compute_firewall" "http-server" {
	name = "default-allow-http"
	network = "default"

	allow{
		protocol = "tcp"
		ports = ["80"]
	}

	source_ranges = ["0.0.0.0/0"]
	target_tags = ["http-server"]

}

// Criando Instancia - GCP
resource "google_compute_instance" "webserver" {
	name = "webserver-terraform"
	machine_type = "n1-standard-1"
	zone = "us-central1-a"
	tags = ["http-server"]

	boot_disk {
	    initialize_params {
	      image = "debian-cloud/debian-9"
	    }
	}

	network_interface {
	    network = "default"
	    access_config { } // Bloco para Gerar IP Externo

	}

	metadata_startup_script = "sudo apt-get update && sudo apt-get install nginx -y && echo 'GCP DevSecOps' > /var/www/html/index.html"
}
