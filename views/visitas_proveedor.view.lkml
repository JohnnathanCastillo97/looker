view: visitas_proveedor {
  sql_table_name: bd_ic_cliente.visitas_proveedor ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: cliente {
    type: number
    sql: ${TABLE}.cliente ;;
  }
  dimension: correo_atiende {
    type: string
    sql: ${TABLE}.correo_atiende ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension_group: fecha_creacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_creacion ;;
  }
  dimension_group: fecha_modificacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_modificacion ;;
  }
  dimension_group: fecha_visita {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_visita ;;
  }
  dimension: id_proveedor {
    type: number
    sql: ${TABLE}.id_proveedor ;;
  }
  dimension: id_usuario_creacion {
    type: number
    sql: ${TABLE}.id_usuario_creacion ;;
  }
  dimension: id_usuario_evaluador {
    type: number
    sql: ${TABLE}.id_usuario_evaluador ;;
  }
  dimension: id_usuario_modificacion {
    type: number
    sql: ${TABLE}.id_usuario_modificacion ;;
  }
  dimension: observaciones {
    type: string
    sql: ${TABLE}.observaciones ;;
  }
  dimension: persona_atiende {
    type: string
    sql: ${TABLE}.persona_atiende ;;
  }
  dimension: persona_realiza {
    type: string
    sql: ${TABLE}.persona_realiza ;;
  }
  dimension: puntaje {
    type: number
    sql: ${TABLE}.puntaje ;;
  }
  dimension: reporte {
    type: string
    sql: ${TABLE}.reporte ;;
  }
  dimension: telefono_atiende {
    type: string
    sql: ${TABLE}.telefono_atiende ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
