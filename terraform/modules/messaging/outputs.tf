output "messaging_topic_id" {
  description = "The ID of the Pub/Sub topic."
  value       = google_pubsub_topic.messaging_topic.id
}

output "messaging_subscription_id" {
  description = "The ID of the Pub/Sub subscription."
  value       = google_pubsub_subscription.messaging_subscription.id
}