view: solicitud_ecopetrol_maestra_vs_gestores_backup {
  sql_table_name: bd_ic_cliente.solicitud_ecopetrol_maestra_vs_gestores_backup ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: analista_secop_id {
    type: number
    sql: ${TABLE}.analista_secop_id ;;
  }
  dimension: departamento_id {
    type: number
    sql: ${TABLE}.departamento_id ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension_group: fecha_actualizacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_actualizacion ;;
  }
  dimension_group: fecha_creacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_creacion ;;
  }
  dimension: gestor_backup_id {
    type: number
    sql: ${TABLE}.gestor_backup_id ;;
  }
  dimension: maestra_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.maestra_id ;;
  }
  dimension: usuario_actualizacion {
    type: string
    sql: ${TABLE}.usuario_actualizacion ;;
  }
  dimension: usuario_creacion {
    type: string
    sql: ${TABLE}.usuario_creacion ;;
  }
  measure: count {
    type: count
    drill_fields: [id, maestras.id]
  }
}
