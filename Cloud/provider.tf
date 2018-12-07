// Configurando a autenticacao no Google
provider "google" {
  credentials = "${file("key.json")}"
  project     = "devsecops-212714"
  region      = "us-central1"
}


// Definindo qual projeto será utilizado
resource "google_project" "devsecops" {
  name = "DevSecOps"
  project_id = "devsecops-212714"
}

//Adicionando usuario para administrar instancias
data "google_iam_policy" "admin" {
  binding {
    role = "roles/compute.instanceAdmin"

    members = [
      "user:gabriel.araujo@4linux.com.br",
    ]
  }
}


//criando a infraestrutura
resource "google_compute_instance" "webserver" {
name = "webserver-terraform"
machine_type = "n1-standard-1"
zone = "us-central1-a"

boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }


 network_interface {
    network = "default"

 access_config {
    }

  }
tags = ["http-server"]
metadata_startup_script = "apt-get update && apt-get install nginx -y && echo 'Sou DevSecOps' > /var/www/html/index.html"

}
