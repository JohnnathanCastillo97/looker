view: solfin_proveedor_lect_correos_faltan {
  sql_table_name: bd_ic_cliente.solfin_proveedor_lect_correos_faltan ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: asunto_lect {
    type: string
    sql: ${TABLE}.asunto_lect ;;
  }
  dimension: correo_lect {
    type: string
    sql: ${TABLE}.correo_lect ;;
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
  dimension: id_correos_lect {
    type: string
    sql: ${TABLE}.id_correos_lect ;;
  }
  dimension: id_mensaje_lect {
    type: string
    sql: ${TABLE}.id_mensaje_lect ;;
  }
  dimension: nit_proveedor {
    type: string
    sql: ${TABLE}.nit_proveedor ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
