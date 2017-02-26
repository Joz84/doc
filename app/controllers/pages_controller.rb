class PagesController < ApplicationController
  # skip_before_action :authenticate_user!, only: [ :home ]

  def home
    addresses = [ { latitude: 44.835932, longitude: -0.572410},
                  { latitude: 45.473553, longitude: -1.096063},
                  { latitude: 44.614637, longitude: 0.662878}
                ]
    @hash = Gmaps4rails.build_markers(addresses) do |address, marker|
      marker.lat address[:latitude]
      marker.lng address[:longitude]
      # marker.infowindow render_to_string(partial: "/flats/map_box", locals: { flat: flat })
    end
  end
end
