class TeamsService
    def self.create(name, description)
        team = Team.new({
            name: name,
            description: description
        })
        return false unless team.valid?

        team.save
    end
