package seg3502.carhms.application.dtos.queries

import java.time.LocalDate

data class RecordOrganizerCertificationDto(
    val hikerId: String,
    val certificateNumber: String,
    val issueDate: LocalDate,
    val expirationDate: LocalDate,
    val organizerLevel: String
)
