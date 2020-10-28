type BatchStatusType = {
	status: String,
	lastRun: String
}
fun setBatchStatusToRunning() :BatchStatusType = {
	status: Mule::p('batch.status.running'),
	lastRun: now() as String
} 
fun setBatchStatusToComplete() :BatchStatusType = {
	status: Mule::p('batch.status.complete'),
	lastRun: now() as String
} 
