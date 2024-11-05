view: corona_empresas {
  sql_table_name: bd_ic_cliente.Corona_empresas ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: id_empresa {
    type: number
    sql: ${TABLE}.id_empresa ;;
  }
  dimension: lifnr {
    type: string
    sql: ${TABLE}.lifnr ;;
  }
  dimension: nombre_empresa {
    type: string
    sql: ${TABLE}.Nombre_empresa ;;
  }
  dimension: tipopersona {
    type: string
    sql: ${TABLE}.tipopersona ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
