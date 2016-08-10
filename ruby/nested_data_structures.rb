# My construct is a Classroom

classroom = {
	front_of_class: {
		name: "Teacher's Pets",
		desk_count: {
			total_desks: 6,
			desks_available: 3,
		},
		desk_contents: [
			"Books",
			"Pencils",
			"Pens",
			"Calulators",
			"Apples",
		],
	},
	middle_of_class: {
		name: "Keeping Low",
		desk_count: {
			total_desks: 6,
			desks_available: 2,
		},
		desk_contents: [
			"Books",
			"Pens",
			"Rubberbands",
		]
	},
	back_of_class: {
		name: "Slackers",
		desk_count: {
			total_desks: 6,
			desks_available: 0,
		},
		desk_contents: ["Empty"]
	}
}

p classroom[:front_of_class][:desk_contents]
p classroom[:back_of_class][:name]
p classroom[:front_of_class]






