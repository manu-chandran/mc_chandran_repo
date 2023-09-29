view: dept {
  sql_table_name: mc_emp.dept ;;
  drill_fields: [deptid]

  dimension: deptid {
    primary_key: yes
    type: number
    sql: ${TABLE}.deptid ;;
  }
  dimension: deptname {
    type: string
    sql: ${TABLE}.deptname ;;
  }
  dimension: empid {
    type: number
    value_format_name: id
    sql: ${TABLE}.empid ;;
  }
  measure: count {
    type: count
    drill_fields: [deptid, deptname]
  }
}
