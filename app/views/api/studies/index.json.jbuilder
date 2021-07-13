json.array! @trials do |trial|
  json.id trial.id
  json.system_id trial.system_id
  json.brief_title trial.brief_title
  json.official_title trial.official_title
  json.contact_override trial.contact_override
  json.contact_override_first_name trial.contact_override_first_name
  json.contact_override_last_name trial.contact_override_last_name
  json.irb_number trial.irb_number
  json.overall_status trial.overall_status
  json.phase trial.phase
  json.pi_id trial.pi_id
  json.pi_name trial.pi_name
  json.recruiting trial.recruiting
  json.simple_description trial.simple_description
  json.visible trial.visible
  json.eligibility_criteria trial.eligibility_criteria
  json.min_age_unit trial.min_age_unit
  json.max_age_unit trial.max_age_unit
  json.healthy_volunteers_imported trial.healthy_volunteers_imported
  json.gender trial.gender
  json.keywords trial.keywords
  json.conditions trial.condition_values
  json.locations trial.locations
  json.interventions trial.trial_interventions
end
