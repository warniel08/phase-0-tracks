# My construct is a Classroom

classroom = {
	front_of_class: {
		name: "Teacher's Pets",
		desk_count: {
			total_desks: 6,
			desks_taken: {
				number_desks_taken: 2,
				desk_contents: [
					"Books",
					"Pencils",
					"Pens",
					"Calulators",
					"Apples"
				],
			},
			desks_available: 4
		},
	},
	middle_of_class: {
		name: "Keeping Low",
		desk_count: {
			total_desks: 6,
			desks_taken: {
				number_desks_taken: 3,
				desk_contents: [
					"Books",
					"Pens",
					"Rubberbands"
				],
			},
			desks_available: 3
		},
	},
	back_of_class: {
		name: "Slackers",
		desk_count: {
			total_desks: 6,
			desks_taken: {
				number_desks_taken: 6,
				desk_contents: ["Empty"],
			},
			desks_available: 0
		}
	}
}

p classroom[:front_of_class][:desk_count][:desks_taken][:desk_contents]
p classroom[:front_of_class][:desk_count][:desks_taken][:desk_contents].sort_by{|k, v|}.reverse
p classroom[:back_of_class][:name]
p classroom[:back_of_class][:desk_count][:desks_taken][:desk_contents]
p classroom[:middle_of_class][:name]
p classroom[:middle_of_class][:desk_count][:desks_taken][:desk_contents]
p classroom[:back_of_class][:desk_count][:desks_taken][:number_desks_taken]
p classroom[:front_of_class][:desk_count][:desks_taken][:desk_contents][2]





