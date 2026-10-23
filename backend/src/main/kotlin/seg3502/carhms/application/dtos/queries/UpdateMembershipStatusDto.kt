package seg3502.carhms.application.dtos.queries

data class UpdateMembershipStatusDto(
    val hikerId: String,
    val membershipStatus: String
)
