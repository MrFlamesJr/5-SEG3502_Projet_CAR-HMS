package seg3502.carhms.application.usecases

import seg3502.carhms.application.dtos.queries.RegisterHikerDto

interface RegisterHiker {
    fun registerHiker(hikerInfo: RegisterHikerDto): String
}
