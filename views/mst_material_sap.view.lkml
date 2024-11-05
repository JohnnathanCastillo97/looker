view: mst_material_sap {
  sql_table_name: bd_ic_cliente.mst_material_sap ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension_group: fecha {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha ;;
  }
  dimension: grupo {
    type: string
    sql: ${TABLE}.grupo ;;
  }
  dimension: material {
    type: number
    sql: ${TABLE}.material ;;
  }
  dimension: textobreve {
    type: string
    sql: ${TABLE}.textobreve ;;
  }
  dimension: tipomaterial {
    type: string
    sql: ${TABLE}.tipomaterial ;;
  }
  dimension: unidad {
    type: string
    sql: ${TABLE}.unidad ;;
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
