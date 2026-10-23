package seg3502.carhms.application.usecases

import seg3502.carhms.application.dtos.queries.RecordOrganizerCertificationDto
import seg3502.carhms.application.dtos.queries.UpdateHikerInformationDto
import seg3502.carhms.application.dtos.queries.UpdateMembershipStatusDto

interface UpdateHiker {
    fun updateHikerInformation(hikerInfo: UpdateHikerInformationDto)
    fun updateMembershipStatus(membershipInfo: UpdateMembershipStatusDto)
    fun recordOrganizerCertification(certificationInfo: RecordOrganizerCertificationDto)
}
