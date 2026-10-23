package seg3502.carhms.application.dtos.queries

import java.time.Duration
import java.time.LocalDate
import java.time.LocalDateTime

data class CreateHikeDto(
    val organizerId: String,
    val title: String,
    val description: String,
    val trailName: String,
    val startDateTime: LocalDateTime,
    val expectedDuration: Duration,
    val registrationDeadline: LocalDate,
    val capacity: Int
)
