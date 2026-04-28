# Unreleased

# 1.3.0

* Upgrading to OE Zulip Pattern 1.3.0 (Zulip version 11.6)
* Update `rabbitmq_instance_class` default from `mq.t3.micro` to `mq.m7g.medium` to match the 1.3.0 template's AllowedValues constraint (`mq.m7g.*` and `mq.m5.*` are now the only supported instance classes for the RabbitMQ broker)

1.2.0
-----
* Initial Terraform module release
