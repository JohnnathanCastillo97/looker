view: contratistas_contrato_acuacar {
  sql_table_name: bd_ic_cliente.contratistas_contrato_acuacar ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: contrato_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.contrato_id ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: proveedor_id {
    type: string
    sql: ${TABLE}.proveedor_id ;;
  }
  dimension: proveedor_tipo {
    type: string
    sql: ${TABLE}.proveedor_tipo ;;
  }
  measure: count {
    type: count
    drill_fields: [id, contratos.id]
  }
}
