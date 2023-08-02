build {
  sources = [
    "source.docker.nginx",
    "source.docker.php-fpm"
  ]

  provisioner "shell" {
    inline = [
      "hostname && cat /etc/os-release"
    ]
  }
}
