resource "local_file" "exemplo" {
  filename = "exemplo.txt"
  content  = var.conteudo
}

data "local_file" "conteudo_exemplo" {
  filename = "exemplo.txt"
}

output "data-source-result" {
  value = data.local_file.conteudo_exemplo.content
}

variable "conteudo" {
  type = string
}
