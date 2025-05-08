# Grafana

## tips and tricks

you can start an `query exploration` from panels.
explore directly and build the query to isole resources.

Also, in the explore, you can switch to Loki.

## Grafana Alerting

https://grafana.com/docs/grafana/latest/alerting/

### Contact points

https://grafana.com/docs/grafana/latest/alerting/configure-notifications/

---

https://grafana.com/docs/grafana/latest/alerting/configure-notifications/manage-contact-points/#list-of-supported-integrations

### Metrics

=======

### defining alerts

query is for data
expressions validation of the data.

PENDING PERIOD / Also knowed as EVALUATION INTERVAL

#### Key concepts

Evaluation group: a group evaluates all its rules over the same evaluation interval.

evaluation Interval: How often all rules in the group are evaluated.

Pending Period: Period the the threshold condition must be met to trigger the alert.
Selecting Nonetriggers the alert immediately once the condition is met.

### Metrics Explorer

### Metrics Explorer

https://grafana.com/docs/grafana/latest/datasources/prometheus/query-editor/#metrics-explorer

### Query Editor

https://grafana.com/docs/grafana/latest/datasources/prometheus/query-editor/

### Dashboard > Variables

https://grafana.com/docs/grafana/latest/dashboards/variables/

## Loki

https://grafana.com/docs/loki/latest/query/query_examples/

```
{service_name=`backend`} | json | logfmt | _response_result=`503`

```

## Traces

https://grafana.com/docs/grafana/latest/panels-visualizations/visualizations/traces
