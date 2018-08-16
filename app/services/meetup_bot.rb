	class MeetupBot

		def initialize

		end

		def perform

			#auth = 11626466775b67a4f3c365cc77a13

	# If you wish to provide auth data for each instance,
	# then pass it to the Rubeetup.setup call as an argument:
	#
	#requester = Rubeetup.setup(auth)

	# Otherwise you can pass default auth data once and be done with it:
	#
	Rubeetup.default_auth(key: "11626466775b67a4f3c365cc77a13")
	requester = Rubeetup.setup


	# Each request will take a Hash of options.
	# Check in rubeetup/requests_lib/meetup_catalog.rb, or in the
	# MeetupCatalog documentation, or at: http://www.meetup.com/meetup_api
	# for a list of required and available parameters for your specific request.
	#
	# Rubeetup will raise an Error if any request is attempted without
	# providing all the required parameters.
	#

	a = ["wordpress-ile-de-france","Growth-Hacking-Experiments","Paris-Tech-Meetups5","Paris-Datageeks","formation-developpeur-web-paris"]
    
	a.each do |b|
	events = requester.get_events(group_urlname: b)

	events.each do |event|
	p event.create_event_comment(comment: "test")
	 # aaa = event.create_event_comment(comment: "test")
sleep(10)
	end
end
    #create_event_comment
    # (event_id: "jmmhzpyxlbwb", comment: "test")
# end
 # b = aaa.create_event_comment(event_id: "jmmhzpyxlbwb", comment: "test")
 # b = get_event(id: "jmmhzpyxlbwb")
 # c = create_event_comment(comment: "test")
	# Every request returns an array of results, and you can safely iterate over them.
	# Furthermore, each result stored in the array is a symbol-keyed Hash.
	#
	# events.each do |event|
	#   # Each element is a Hash, so you can simply do:
	#   puts event[:name]

	#   # But Rubeetup also allows you to access elements' keys in OO-style:
	#   puts event.name, event.time, event.duration

	#   venue = event.venue
	#   puts venue.address_1, venue.city
	# end



	# event = requester.create_event(group_id: testing_group_id,
	# 	group_urlname: testing_group_urlname,
	# 	name: 'test').first
	# puts event.id

end
end

