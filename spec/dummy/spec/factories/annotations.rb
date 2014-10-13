# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :annotation, class: AnnotatorStore::Annotation do
    version 'v1.0'
    text 'A note I wrote'
    quote 'the text that was annotated'
    uri 'http://example.com'
    ranges '{}'
  end
end
