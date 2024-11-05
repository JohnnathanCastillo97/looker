view: paa_linea_presupuestal {
  sql_table_name: bd_ic_cliente.paa_linea_presupuestal ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: fuente_recursos {
    type: string
    sql: ${TABLE}.fuente_recursos ;;
  }
  dimension: id_accion_plan_rector {
    type: number
    sql: ${TABLE}.id_accion_plan_rector ;;
  }
  dimension: id_cliente {
    type: number
    sql: ${TABLE}.id_cliente ;;
  }
  dimension: id_iniciativa {
    type: number
    sql: ${TABLE}.id_iniciativa ;;
  }
  dimension: id_objetivo {
    type: number
    sql: ${TABLE}.id_objetivo ;;
  }
  dimension: id_paa_linea {
    type: number
    sql: ${TABLE}.id_paa_linea ;;
  }
  dimension: id_perspectiva {
    type: number
    sql: ${TABLE}.id_perspectiva ;;
  }
  dimension: plan_rector {
    type: string
    sql: ${TABLE}.plan_rector ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
