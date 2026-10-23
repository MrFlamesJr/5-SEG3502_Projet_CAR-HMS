package seg3502.carhms.application.usecases

import seg3502.carhms.application.dtos.queries.SignUpForHikeDto

interface SignUpForHike {
    fun signUpForHike(signUpInfo: SignUpForHikeDto)
}
