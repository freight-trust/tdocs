require 'spec_helper'

RSpec.describe Metanorma::tdoc do
  it "has a version number" do
    expect(Metanorma::tdoc::VERSION).not_to be nil
  end
  describe '#configuration' do
    it 'has `configuration` attribute accessable' do
      expect(Metanorma::tdoc.configuration)
        .to(be_instance_of(Metanorma::tdoc::Configuration))
    end

    context 'default attributes' do
      subject(:config) { Metanorma::tdoc.configuration }
      let(:default_organization_name_short) { 'Freight Trust and Clearing' }
      let(:default_organization_name_long) { 'Freight Trust and Clearing' }
      let(:default_document_namespace) do
        'https://www.metanorma.org/ns/tdoc'
      end

      it 'sets default atrributes' do
        expect(config.organization_name_short)
          .to(eq(default_organization_name_short))
        expect(config.organization_name_long)
          .to(eq(default_organization_name_long))
        expect(config.document_namespace)
          .to(eq(default_document_namespace))
      end
    end

    context 'attribute setters' do
      subject(:config) { Metanorma::tdoc.configuration }
      let(:organization_name_short) { 'Test' }
      let(:organization_name_long) { 'Test Corp.' }
      let(:document_namespace) { 'https://example.com/' }

      it 'sets atrributes' do
        Metanorma::tdoc.configure do |config|
          config.organization_name_short = organization_name_short
          config.organization_name_long = organization_name_long
          config.document_namespace = document_namespace
        end
        expect(config.organization_name_short).to eq(organization_name_short)
        expect(config.organization_name_long).to eq(organization_name_long)
        expect(config.document_namespace).to eq(document_namespace)
      end
    end
  end
end
