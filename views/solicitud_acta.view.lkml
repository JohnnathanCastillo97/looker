view: solicitud_acta {
  sql_table_name: bd_ic_cliente.solicitud_acta ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: alcance {
    type: string
    sql: ${TABLE}.alcance ;;
  }
  dimension: antecedentes {
    type: string
    sql: ${TABLE}.antecedentes ;;
  }
  dimension: aporte {
    type: number
    sql: ${TABLE}.aporte ;;
  }
  dimension: codigo {
    type: string
    sql: ${TABLE}.codigo ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: duracion {
    type: string
    sql: ${TABLE}.duracion ;;
  }
  dimension: especificos {
    type: string
    sql: ${TABLE}.especificos ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: experencia {
    type: string
    sql: ${TABLE}.experencia ;;
  }
  dimension_group: fecha_fin {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_fin ;;
  }
  dimension_group: fecha_inicio {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_inicio ;;
  }
  dimension: generales {
    type: string
    sql: ${TABLE}.generales ;;
  }
  dimension: id_solicitud {
    type: number
    sql: ${TABLE}.id_solicitud ;;
  }
  dimension: justificacion {
    type: string
    sql: ${TABLE}.justificacion ;;
  }
  dimension: lider {
    type: string
    sql: ${TABLE}.lider ;;
  }
  dimension: nombre {
    type: string
    sql: ${TABLE}.nombre ;;
  }
  dimension: presupuesto {
    type: number
    sql: ${TABLE}.presupuesto ;;
  }
  dimension: programa {
    type: string
    sql: ${TABLE}.programa ;;
  }
  dimension: requisitos {
    type: string
    sql: ${TABLE}.requisitos ;;
  }
  dimension: sponsor {
    type: string
    sql: ${TABLE}.sponsor ;;
  }
  dimension: tipo_inversion {
    type: string
    sql: ${TABLE}.tipo_inversion ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
