view: empsal {
  sql_table_name: mc_emp.empsal ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: empname {
    type: string
    sql: ${TABLE}.empname ;;
  }
  dimension: empsal {
    type: number
    sql: ${TABLE}.empsal ;;
  }
  measure: count {
    type: count
    drill_fields: [id, empname]
  }
}
