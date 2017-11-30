
namespace TaskUtility
{
    public interface ITask
    {
        int TaskID { get; set; }

        TaskType TaskName { get; set; }

        void ExecuteTask();
    }
}
