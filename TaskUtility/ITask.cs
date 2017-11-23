
namespace TaskUtility
{
    public interface ITask
    {
        int TaskID { get; set; }

        Tasks TaskName { get; set; }

        void ExecuteTask();
    }
}
