package seg3502.carhms.application.usecases

import seg3502.carhms.application.dtos.queries.SendHikeReminderDto

interface SendHikeReminder {
    fun sendHikeReminder(reminderInfo: SendHikeReminderDto)
}
