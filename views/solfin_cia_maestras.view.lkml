view: solfin_cia_maestras {
  sql_table_name: bd_ic_cliente.solfin_cia_maestras ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: cliente_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.clienteId ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: estado_certificado {
    type: string
    sql: ${TABLE}.estado_certificado ;;
  }
  dimension: id_cia {
    type: string
    sql: ${TABLE}.idCia ;;
  }
  dimension: nombre {
    type: string
    sql: ${TABLE}.nombre ;;
  }
  measure: count {
    type: count
    drill_fields: [id, clientes.id]
  }
}
