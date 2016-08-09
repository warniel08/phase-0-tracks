# My construct is a Classroom

classroom = {
	front_of_class: {
		desk_count: {
			total_desks: 6,
			desks_available: 3
		},
		desk_contents: [
			"empty",
			"full"
		],
	},
	middle_of_class: {
		desk_count: {
			total_desks: 6,
			desks_available: 2
		},
	},
	back_of_class: {
		desk_count: {
			total_desks: 6,
			desks_available: 0
		}
	}
}

p classroom[:front_of_class][:desk_contents]