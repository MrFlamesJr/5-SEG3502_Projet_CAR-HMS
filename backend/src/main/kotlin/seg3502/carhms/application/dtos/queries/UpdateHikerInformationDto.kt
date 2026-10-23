package seg3502.carhms.application.dtos.queries

import java.time.LocalDate

data class UpdateHikerInformationDto(
    val hikerId: String,
    val name: String,
    val phoneNumber: String,
    val homeAddress: String,
    val birthDate: LocalDate,
    val emergencyContactName: String,
    val emergencyContactPhoneNumber: String,
    val skillLevel: String
)
