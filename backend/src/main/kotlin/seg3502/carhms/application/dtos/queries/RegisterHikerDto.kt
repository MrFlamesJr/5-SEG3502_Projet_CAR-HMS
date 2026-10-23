package seg3502.carhms.application.dtos.queries

import java.time.LocalDate

data class RegisterHikerDto(
    val invitationCode: String,
    val email: String,
    val name: String,
    val phoneNumber: String,
    val homeAddress: String,
    val birthDate: LocalDate,
    val emergencyContactName: String,
    val emergencyContactPhoneNumber: String,
    val skillLevel: String,
    val liabilityWaiverAccepted: Boolean,
    val guardianName: String?
)
