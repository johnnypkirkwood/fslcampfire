public class LoadDreamforceDataQueueable  implements Queueable {
	public final String boothNum_x;
    public LoadDreamforceDataQueueable(String boothNum) {
        boothNum_x = '1';
    }
    public void execute(QueueableContext context) {
        if(boothNum_x != '0') {
            LoadDreamforceFSLMasterData.generateFSLData(new List<String>{boothNum_x});
        }
    }
}
