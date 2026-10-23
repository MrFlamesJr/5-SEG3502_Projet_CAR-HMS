package seg3502.carhms.application.usecases

import seg3502.carhms.application.dtos.queries.CancelSignUpDto

interface CancelSignUp {
    fun cancelSignUp(cancelInfo: CancelSignUpDto)
}
