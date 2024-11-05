view: offerer_envelopes_evaluated_documents {
  sql_table_name: bd_ic_cliente.offerer_envelopes_evaluated_documents ;;

  dimension_group: envelope_creation {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.envelope_creation_date ;;
  }
  dimension: envelope_general_information {
    type: number
    sql: ${TABLE}.envelope_general_information ;;
  }
  dimension_group: envelope_modification {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.envelope_modification_date ;;
  }
  dimension: envelope_name {
    type: string
    sql: ${TABLE}.envelope_name ;;
  }
  dimension: envelope_obligatoriety {
    type: number
    sql: ${TABLE}.envelope_obligatoriety ;;
  }
  dimension: envelope_state {
    type: string
    sql: ${TABLE}.envelope_state ;;
  }
  dimension: envelope_user_update {
    type: number
    sql: ${TABLE}.envelope_user_update ;;
  }
  dimension: evaluation_id {
    type: number
    sql: ${TABLE}.evaluation_id ;;
  }
  dimension: evaluator_id {
    type: number
    sql: ${TABLE}.evaluator_id ;;
  }
  dimension: id_client {
    type: number
    sql: ${TABLE}.id_client ;;
  }
  dimension: id_envelope {
    type: number
    sql: ${TABLE}.id_envelope ;;
  }
  dimension: id_offerer_document {
    type: number
    sql: ${TABLE}.id_offerer_document ;;
  }
  dimension: offer_document_content {
    type: string
    sql: ${TABLE}.offer_document_content ;;
  }
  dimension_group: offer_document_creation {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.offer_document_creation_date ;;
  }
  dimension_group: offer_document_evaluation_creation {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.offer_document_evaluation_creation_date ;;
  }
  dimension: offer_document_evaluation_cumpliment {
    type: string
    sql: ${TABLE}.offer_document_evaluation_cumpliment ;;
  }
  dimension: offer_document_evaluation_repairable {
    type: string
    sql: ${TABLE}.offer_document_evaluation_repairable ;;
  }
  dimension: offer_document_evaluation_result {
    type: string
    sql: ${TABLE}.offer_document_evaluation_result ;;
  }
  dimension: offer_document_evaluation_user {
    type: number
    sql: ${TABLE}.offer_document_evaluation_user ;;
  }
  dimension: offer_document_id {
    type: number
    sql: ${TABLE}.offer_document_id ;;
  }
  dimension: offer_document_path {
    type: string
    sql: ${TABLE}.offer_document_path ;;
  }
  dimension: offer_document_type {
    type: string
    sql: ${TABLE}.offer_document_type ;;
  }
  dimension: offer_document_user_owner {
    type: number
    sql: ${TABLE}.offer_document_user_owner ;;
  }
  dimension: offer_evaluation_document_id {
    type: number
    sql: ${TABLE}.offer_evaluation_document_id ;;
  }
  dimension: offer_evaluation_document_observ {
    type: string
    sql: ${TABLE}.offer_evaluation_document_observ ;;
  }
  dimension: offer_evaluation_document_path {
    type: string
    sql: ${TABLE}.offer_evaluation_document_path ;;
  }
  dimension: offer_id {
    type: number
    sql: ${TABLE}.offer_id ;;
  }
  dimension_group: offerer_creation {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.offerer_creation_date ;;
  }
  dimension: offerer_document_content {
    type: string
    sql: ${TABLE}.offerer_document_content ;;
  }
  dimension: offerer_document_description {
    type: string
    sql: ${TABLE}.offerer_document_description ;;
  }
  dimension: offerer_document_id {
    type: string
    sql: ${TABLE}.offerer_document_id ;;
  }
  dimension: offerer_document_obligatoriety {
    type: number
    sql: ${TABLE}.offerer_document_obligatoriety ;;
  }
  dimension: offerer_document_title {
    type: string
    sql: ${TABLE}.offerer_document_title ;;
  }
  dimension: offerer_document_type {
    type: string
    sql: ${TABLE}.offerer_document_type ;;
  }
  dimension: offerer_envelope {
    type: string
    sql: ${TABLE}.offerer_envelope ;;
  }
  dimension: offerer_evaluable {
    type: string
    sql: ${TABLE}.offerer_evaluable ;;
  }
  dimension: offerer_evaluation_parameter {
    type: string
    sql: ${TABLE}.offerer_evaluation_parameter ;;
  }
  dimension: offerer_evaluation_type {
    type: string
    sql: ${TABLE}.offerer_evaluation_type ;;
  }
  dimension: offerer_id {
    type: number
    sql: ${TABLE}.offerer_id ;;
  }
  dimension_group: offerer_modification {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.offerer_modification_date ;;
  }
  dimension: offerer_modificator_user {
    type: number
    sql: ${TABLE}.offerer_modificator_user ;;
  }
  dimension: offerer_offer_id {
    type: number
    sql: ${TABLE}.offerer_offer_id ;;
  }
  dimension: offerer_old_id {
    type: number
    sql: ${TABLE}.offerer_old_id ;;
  }
  dimension: offerer_seq_id {
    type: number
    sql: ${TABLE}.offerer_seq_id ;;
  }
  dimension: offerer_status {
    type: string
    sql: ${TABLE}.offerer_status ;;
  }
  measure: count {
    type: count
    drill_fields: [envelope_name]
  }
}
