require "rails_helper"

describe Trial do
  it "calculates healthy_volunteers" do
    trial = Trial.create(healthy_volunteers_imported: false)
    expect(trial.healthy_volunteers).to be false
  end

  it "overrides healthy_volunteers" do
    trial = Trial.create(healthy_volunteers_imported: false)
    trial.update(healthy_volunteers_override: true)
    expect(trial.healthy_volunteers).to be true
  end

  it "detects NCT numbers" do
    expect(Trial.new(system_id: "thisisnotannctnumber").has_nct_number?).to be false
    expect(Trial.new(system_id: "NCT123").has_nct_number?).to be true
    expect(Trial.new(system_id: "nct123").has_nct_number?).to be true
  end

  it "sorts search results by added_on date" do
    Trial.create(added_on: 5.days.ago, visible: true)
    Trial.create(added_on: 2.months.ago, visible: true)
    Trial.create(added_on: 1.day.ago, visible: true)

    result_dates = Trial.execute_search({q: ""}).results.map(&:added_on)

    expect(result_dates).to eq(result_dates.sort.reverse)
  end
end
