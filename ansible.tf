resource "local_file" "inventory" {
    filename = "./invent.txt"
    content = templatefile("./ansible.tftpl", {
        webservers = yandex_compute_instance.web,
        databases = yandex_compute_instance.db,
        storages = [yandex_compute_instance.storage]
    })
}