package seg3502.carhms.application.usecases

import seg3502.carhms.application.dtos.queries.CreateHikeDto

interface CreateHike {
    fun createHike(hikeInfo: CreateHikeDto): String
}
