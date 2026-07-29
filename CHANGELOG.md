# 2.1.1

* Upgrading to OE Zulip Pattern 2.1.1 (pattern patch release, Zulip version unchanged at 12.1)
* Update `template_url` to the Marketplace-hosted 2.1.1 template
* Update `asg_instance_type` default from `t3.medium` to `t3.large` to match the 2.1.1 template's AllowedValues constraint (`t3.medium` reliably OOM-crash-loops under Zulip's worker processes and is no longer accepted)

# 2.1.0

* Upgrading to OE Zulip Pattern 2.1.0 (Zulip version 12.1)

# 2.0.0

* Upgrading to OE Zulip Pattern 2.0.0 (Zulip version 12.0)

# 1.3.0

* Upgrading to OE Zulip Pattern 1.3.0 (Zulip version 11.6)
* Update `rabbitmq_instance_class` default from `mq.t3.micro` to `mq.m7g.medium` to match the 1.3.0 template's AllowedValues constraint (`mq.m7g.*` and `mq.m5.*` are now the only supported instance classes for the RabbitMQ broker)

1.2.0
-----
* Initial Terraform module release
