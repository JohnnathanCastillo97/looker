view: contratos_polizas_rev_apro {
  sql_table_name: bd_ic_cliente.contratos_polizas_rev_apro ;;

  dimension: contratos_polizas_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.contratos_polizas_id ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: estado_rev_apr {
    type: string
    sql: ${TABLE}.estado_rev_apr ;;
  }
  dimension: expedido_aliado_acuacar_rev_apro {
    type: string
    sql: ${TABLE}.expedido_aliado_acuacar_rev_apro ;;
  }
  dimension: expedido_aliado_vanti_rev_apro {
    type: string
    sql: ${TABLE}.expedido_aliado_vanti_rev_apro ;;
  }
  dimension_group: fecha_rev_apr {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_rev_apr ;;
  }
  dimension: id_rev_apro {
    type: number
    sql: ${TABLE}.id_rev_apro ;;
  }
  dimension: observ_rev_apr {
    type: string
    sql: ${TABLE}.observ_rev_apr ;;
  }
  dimension: otros {
    type: string
    sql: ${TABLE}.otros ;;
  }
  dimension: usuario_delegacion {
    type: number
    sql: ${TABLE}.usuario_delegacion ;;
  }
  dimension: usuarios_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.usuarios_id ;;
  }
  measure: count {
    type: count
    drill_fields: [contratos_polizas.id, usuarios.username, usuarios.id]
  }
}
