view: hocol_datos_proveedores {
  sql_table_name: bd_ic_cliente.HOCOL_DATOS_PROVEEDORES ;;

  dimension: cant_empleados {
    type: number
    sql: ${TABLE}.cant_empleados ;;
  }
  dimension: ciudad {
    type: string
    sql: ${TABLE}.Ciudad ;;
  }
  dimension: departamento {
    type: string
    sql: ${TABLE}.Departamento ;;
  }
  dimension: pais {
    type: string
    sql: ${TABLE}.Pais ;;
  }
  dimension: razonxxx {
    type: string
    sql: ${TABLE}.razonxxx ;;
  }
  dimension: slug {
    type: string
    sql: ${TABLE}.slug ;;
  }
  dimension: tamao_empresa {
    type: string
    sql: ${TABLE}.`Tamaño_empresa` ;;
  }
  dimension: tipo {
    type: string
    sql: ${TABLE}.tipo ;;
  }
  dimension_group: valido_desde {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.valido_desde ;;
  }
  dimension_group: valido_hasta {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.valido_hasta ;;
  }
  measure: count {
    type: count
  }
}
