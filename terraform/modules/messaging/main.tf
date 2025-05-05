resource "google_pubsub_topic" "messaging_topic" {
  name = var.topic_name
}

resource "google_pubsub_subscription" "messaging_subscription" {
  name  = var.subscription_name
  topic = google_pubsub_topic.messaging_topic.id
}