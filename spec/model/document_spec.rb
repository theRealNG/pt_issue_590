require "rails_helper"
require "pp"

RSpec.describe Document do
  it "works" do
    # document = FactoryGirl.create(:document_with_sections_and_paragraphs)
    d = Document.create!(title: "d v1")
    s1 = Section.create!(document: d, title: "s1 v1")
    s2 = Section.create!(document: d, title: "s2 v1")
    p1a = Paragraph.create!(section: s1, title: "p1a v1")
    p1b = Paragraph.create!(section: s1, title: "p1b v1")
    p2a = Paragraph.create!(section: s2, title: "p2a v1")
    p2b = Paragraph.create!(section: s2, title: "p2b v1")
    puts 'Updating some paragraph'
    p1a.update_attributes(title: 'p1a v2')
    puts 'Updating a section name'
    s1.update_attributes(title: 's1 v2')
    puts 'Updating document itself'
    d.update_attributes(title: 'd v2')
    p1a.update_attributes(title: 'p1a v3')
    puts 'Previous version of document'
    d_v2 = d.versions.last.reify(:has_many => true)
    expect(d_v2.title).to eq("d v1")
    expect(d.sections.length).to eq(2)
    expect(d.paragraphs.length).to eq(4)
  end
end
