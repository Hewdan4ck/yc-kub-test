variable "yc_token" {
	type = string
	description = "yc api key"
}
variable "yc_region" {
	type = string
	description = "yc region"
}
variable "yc_cloud_id" {
	type = string
	description = "yc id"
}
variable "yc_folder_id" {
	type = string
	description = "yc folder id"
}

terraform {
	required_providers {
		yandex = {
			source = "yandex-cloud/yandex"
		}
	}
	required_version = ">= 0.13"
}

provider "yandex" {
	token = var.yc_token
	cloud_id = var.yc_cloud_id
	folder_id = var.yc_folder_id
	zone = var.yc_region
}
