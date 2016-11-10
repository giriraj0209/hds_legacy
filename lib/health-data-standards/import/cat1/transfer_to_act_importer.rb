module HealthDataStandards
  module Import
    module Cat1
      class TransferToActImporter < TransferToImporter

        def initialize
          super(CDA::EntryFinder.new("./cda:entry/cda:act[./cda:templateId/@root = '2.16.840.1.113883.10.20.24.3.142']/cda:entryRelationship/cda:encounter[cda:templateId/@root = '2.16.840.1.113883.10.20.24.3.82']"))
          @entry_class = Encounter
        end
      end
    end
  end
end