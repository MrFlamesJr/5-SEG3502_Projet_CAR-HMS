package seg3502.carhms.application.usecases

import seg3502.carhms.application.dtos.queries.BrowseHikesDto
import seg3502.carhms.application.dtos.queries.BrowseHikesForHikerDto

interface BrowseHikes {
    fun browseHikes(searchInfo: BrowseHikesDto): List<String>
    fun browseHikesForHiker(hikerInfo: BrowseHikesForHikerDto): List<String>
}
