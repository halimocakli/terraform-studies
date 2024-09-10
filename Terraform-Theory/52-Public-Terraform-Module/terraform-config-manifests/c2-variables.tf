# Input variable definitions
variable "location" {
  description = "The Azure Region in which all resources groups should be created."
  type        = string
}
variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}
variable "storage_account_name" {
  description = "The name of the storage account"
  type        = string
}
variable "storage_account_tier" {
  description = "Storage Account Tier"
  type        = string
}
variable "storage_account_replication_type" {
  description = "Storage Account Replication Type"
  type        = string
}
variable "storage_account_kind" {
  description = "Storage Account Kind"
  type        = string
}
variable "static_website_index_document" {
  description = "static website index document"
  type        = string
}
variable "static_website_error_404_document" {
  description = "static website error 404 document"
  type        = string
}
variable "storage_blob_index_document_name" {
  description = "static website index document name"
  type        = string
}
variable "storage_blob_error_document_name" {
  description = "static website error 404 document_name"
  type        = string
}
variable "storage_blob_container_name_index" {
  description = "Storage blob container namefor index file"
  type        = string
}
variable "storage_blob_container_name_error" {
  description = "Storage blob container name for error file"
  type        = string
}
variable "storage_blob_type_index" {
  description = "Storage blob type for index file"
  type        = string
}
variable "storage_blob_type_error" {
  description = "Storage blob type for error file"
  type        = string
}
variable "storage_blob_content_type_index" {
  description = "Storage blob content type for index file"
  type        = string
}
variable "storage_blob_content_type_error" {
  description = "Storage blob content type for error file"
  type        = string
}
variable "storage_blob_index_document_source" {
  description = "Storage blob index document source"
  type        = string
}
variable "storage_blob_error_document_source" {
  description = "Storage blob error document source"
  type        = string
}
