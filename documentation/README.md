
# Healthcheck-sa-dashboards

This repository contains dashboards for monitoring the health of a Looker instance. They are designed to leverage performance Optimisation metrics within the instance in order to identify potential areas for improvement




## Getting started


## Installation

To install the dashboards, you will need to:

1. Create a service account with the `  monitoring.dashboardEditor  ` role.
2. Download the dashboards from the [dashboards](#dashboards) section.
3. Import the dashboards into your Google Cloud project.

## Dashboards

The following dashboards are available:

## [Performance Metrics](/documentation/performance_metrics.md)
 
* **Outliers**
    * This dashboard provides a similar view to performance metrics however showing the worst performing query of each metric instead of average. This allows for identification of sub-optimal design patterns which may be present in both the LookML model as well as dashboard design.   
* **History**
    * The history dashboard provides a higher view of dashboard metrics within the instance giving an overview of who is running queries within the instance, usage of features such as pivoting, and totals and query trends. 
* **Schedules**
    * This dashboard shows the access logs for all service accounts in your project.
* **Merged Queries**
    * This dashboard shows the access logs for all service accounts in your project.
* **Large Dashboards**
    * This dashboard shows the access logs for all service accounts in your project.
* **Dashboard Optimisation**
    * This dashboard shows the access logs for all service accounts in your project.


## Contributing

If you would like to contribute to this repository, please fork it and create a pull request.

## License

This repository is licensed under the Apache License, Version 2.0.
