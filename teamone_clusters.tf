data "databricks_node_type" "smallest" {
  depends_on = [databricks_mws_workspaces.this]
  local_disk = true
}

data "databricks_spark_version" "latest_lts" {
  depends_on = [databricks_mws_workspaces.this]
  long_term_support = true
}

resource "databricks_cluster" "shared_autoscaling" {
  cluster_name            = "Shared Autoscaling"
  spark_version           = data.databricks_spark_version.latest_lts.id
  node_type_id            = data.databricks_node_type.smallest.id
  autotermination_minutes = 20
  autoscale {
    min_workers = 1
    max_workers = 10
  }
}
