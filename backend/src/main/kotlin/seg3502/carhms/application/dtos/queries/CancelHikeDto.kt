package seg3502.carhms.application.dtos.queries

data class CancelHikeDto(
    val userId: String,
    val hikeId: String,
    val reason: String
)
