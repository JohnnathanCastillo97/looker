view: requisiciones_generales_materiales {
  sql_table_name: bd_ic_cliente.requisiciones_generales_materiales ;;

  dimension: cantidad {
    type: number
    sql: ${TABLE}.cantidad ;;
  }
  dimension: cod_requisicion {
    type: number
    sql: ${TABLE}.cod_requisicion ;;
  }
  dimension: especificacion_materiales {
    type: string
    sql: ${TABLE}.especificacion_materiales ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension_group: fecha_entrega {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_entrega ;;
  }
  dimension: id_bienes {
    type: number
    sql: ${TABLE}.id_bienes ;;
  }
  dimension: material {
    type: number
    sql: ${TABLE}.material ;;
  }
  dimension: medida {
    type: string
    sql: ${TABLE}.medida ;;
  }
  dimension_group: registro_fecha {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.registro_fecha ;;
  }
  dimension: registro_usuario {
    type: number
    sql: ${TABLE}.registro_usuario ;;
  }
  dimension: titulo {
    type: string
    sql: ${TABLE}.titulo ;;
  }
  dimension: vigencia {
    type: string
    sql: ${TABLE}.vigencia ;;
  }
  measure: count {
    type: count
  }
}
