module Pemilu
  class APIv1 < Grape::API
    version 'v1', using: :accept_version_header
    prefix 'api'
    format :json

    resource :parties do
      desc "Return all Parties"
      get do
        
        parties = Array.new

        limit = (params[:limit].to_i == 0 || params[:limit].empty?) ? 10 : params[:limit]

        Party.limit(limit)
          .offset(params[:offset])
          .each do |party|
            parties << {
              id: party.id,
              nama: party.name,
              visi: party.vision,
              misi: party.mission,
              program: party.program,
              adart: party.adart,
              alamat_sekretariat_pusat: party.address_central_secretariat,
              struktur_kepartaian_pusat: party.structure_central_party,
              resource: party.resource
            }
        end

        {
          results: {
            count: parties.count,
            total: Party.count,
            parties: parties
          }
        }
      end
    end
  end
end