view: solfin_servicio_wsdl {
  sql_table_name: bd_ic_cliente.solfin_servicio_wsdl ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: ambiente {
    type: string
    sql: ${TABLE}.ambiente ;;
  }
  dimension: clave {
    type: string
    sql: ${TABLE}.Clave ;;
  }
  dimension: consulta_wsdl {
    type: string
    sql: ${TABLE}.consulta_wsdl ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: exceptions {
    type: string
    sql: ${TABLE}.exceptions ;;
  }
  dimension: id_cliente {
    type: number
    sql: ${TABLE}.id_cliente ;;
  }
  dimension: id_proveedor {
    type: string
    sql: ${TABLE}.IdProveedor ;;
  }
  dimension: location {
    type: string
    sql: ${TABLE}.location ;;
  }
  dimension: login {
    type: string
    sql: ${TABLE}.login ;;
  }
  dimension: nombre_conexion {
    type: string
    sql: ${TABLE}.NombreConexion ;;
  }
  dimension: password {
    type: string
    sql: ${TABLE}.password ;;
  }
  dimension: tipo_servicio {
    type: string
    sql: ${TABLE}.tipo_servicio ;;
  }
  dimension: trace {
    type: string
    sql: ${TABLE}.trace ;;
  }
  dimension: usuario {
    type: string
    sql: ${TABLE}.Usuario ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
