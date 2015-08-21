require "rails_helper"
require "pp"

RSpec.describe Document do
  it "works" do
    d = Document.create!(title: "d v0")

    # At this point there is one version of the document,
    # the "create" event, which cannot be reified.
    expect(d.versions.length).to eq(1)
    expect(d.versions[0].event).to eq("create")
    expect(d.versions[0].reify(has_many: true)).to be_nil

    Section.create!(document: d, title: "s1 v0")
    Section.create!(document: d, title: "s2 v0")

    # At this point there *still* is only one version of the document.
    expect(d.versions.length).to eq(1)
    expect(d.versions[0].reify(has_many: true)).to be_nil

    # Updating the document should create a second version,
    # with two associated records.
    d.update_attributes(title: 'd v1')
    expect(d.versions.length).to eq(2)

    expect(d.versions[0].event).to eq("create")
    expect(d.versions[0].reify(has_many: true)).to be_nil

    expect(d.versions[1].event).to eq("update")
    expect(d.versions[1].reify(has_many: true).sections.length).to eq(2)
  end
end
