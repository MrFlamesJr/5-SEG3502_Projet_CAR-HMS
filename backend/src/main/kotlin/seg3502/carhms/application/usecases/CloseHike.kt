package seg3502.carhms.application.usecases

import seg3502.carhms.application.dtos.queries.CloseHikeDto

interface CloseHike {
    fun closeHike(closeInfo: CloseHikeDto)
}
