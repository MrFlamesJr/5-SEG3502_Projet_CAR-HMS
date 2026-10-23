package seg3502.carhms.application.usecases

import seg3502.carhms.application.dtos.queries.CancelHikeDto

interface CancelHike {
    fun cancelHike(cancelInfo: CancelHikeDto)
}
