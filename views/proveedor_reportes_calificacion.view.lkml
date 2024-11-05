view: proveedor_reportes_calificacion {
  sql_table_name: bd_ic_cliente.proveedor_reportes_calificacion ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: antiguedad {
    type: number
    sql: ${TABLE}.antiguedad ;;
  }
  dimension: crecimiento {
    type: number
    sql: ${TABLE}.crecimiento ;;
  }
  dimension: experiencia {
    type: number
    sql: ${TABLE}.experiencia ;;
  }
  dimension_group: fecha_creacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_creacion ;;
  }
  dimension: id_cliente {
    type: number
    sql: ${TABLE}.id_cliente ;;
  }
  dimension: id_proveedor {
    type: number
    sql: ${TABLE}.id_proveedor ;;
  }
  dimension: id_reporte {
    type: string
    sql: ${TABLE}.id_reporte ;;
  }
  dimension: puntaje {
    type: number
    sql: ${TABLE}.puntaje ;;
  }
  dimension: situacion_financiera {
    type: number
    sql: ${TABLE}.situacion_financiera ;;
  }
  dimension: url_reporte {
    type: string
    sql: ${TABLE}.url_reporte ;;
  }
  dimension: usuario_creacion {
    type: number
    sql: ${TABLE}.usuario_creacion ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
