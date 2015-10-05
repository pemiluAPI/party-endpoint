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
              nama_lengkap: party.full_name,
              url_situs: party.url_website,
              url_facebook: party.url_facebook,
              url_twitter: party.url_twitter,
              url_logo_mini: party.url_logo_mini,
              url_logo_small: party.url_logo_small,
              url_logo_medium: party.url_logo_medium,
              visi: party.vision_mission.vision,
              misi: party.vision_mission.mission,
              program: party.vision_mission.program,
              adart: party.vision_mission.adart,
              alamat_sekretariat_pusat: party.vision_mission.address_central_secretariat,
              struktur_kepartaian_pusat: party.vision_mission.structure_central_party,
              resource: party.vision_mission.resource
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