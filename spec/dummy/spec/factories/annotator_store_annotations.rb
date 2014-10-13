# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :annotator_store_annotation, class: AnnotatorStore::Annotation do
    id "814865cd-5a1d-4771-9306-4268f188fe9e"
    version "v1.0"
    text "A note I wrote"
    quote "the text that was annotated"
    uri "http://example.com"
    ranges "{}"
  end
end
