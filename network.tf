resource "yandex_vpc_network" "internal" {
	name = "internal"
}

resource "yandex_vpc_subnet" "internal-a" {
	name		= "internal-a"
	zone		= "ru-central1-a"
	network_id	= yandex_vpc_network.internal.id
	v4_cidr_blocks	= ["10.200.0.0/16"]
}

resource "yandex_vpc_subnet" "internal-b" {
	name		= "internal-b"
	zone		= "ru-central1-b"
	network_id	= yandex_vpc_network.internal.id
	v4_cidr_blocks	= ["10.201.0.0/16"]
}

resource "yandex_vpc_subnet" "internal-d" {
	name		= "internal-d"
	zone		= "ru-central1-d"
	network_id	= yandex_vpc_network.internal.id
	v4_cidr_blocks	= ["10.202.0.0/16"]
}
