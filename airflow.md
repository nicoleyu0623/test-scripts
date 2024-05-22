
# Task Management

1. List Tasks in a DAG:

airflow tasks list <dag_id>


2. Show Task Details:
airflow tasks show <dag_id> <task_id>


3. Run a Task:
airflow tasks run <dag_id> <task_id> <execution_date>


4. Clear Task Instances:
airflow tasks clear <dag_id> --task_ids <task_id> --start-date <start_date> --end-date <end_date>


5. Test a Task:
airflow tasks test <dag_id> <task_id> <execution_date>


# DAG MGMT

1. backfill a dag
airflow dags backfill <dag_id> --start-date <start_date> --end-date <end_date>

2. list dag runs
airflow dags list-runs <dag_id>


3. State of DAG Runs:
airflow dags state <dag_id> <execution_date>


# log

airflow tasks logs <dag_id> <task_id> <execution_date>

airflow info



airflow dags trigger example_dag


airflow tasks run example_dag example_task 2023-01-01T00:00:00

airflow tasks clear example_dag --task_ids example_task --start-date 2023-01-01 --end-date 2023-01-31

airflow dags list








