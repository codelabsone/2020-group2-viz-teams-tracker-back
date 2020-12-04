class MemberService
    def self.create(image, firstName, lastName, jobTitle, team)
        @member = Member.new({
            image: image,
            firstName: firstName,
            lastName: lastName,
            jobTitle: jobTitle,
            team: team
        })
        return false unless member.valid?

        @member.save
    end
end