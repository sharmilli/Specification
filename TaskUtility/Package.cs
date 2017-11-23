
namespace TaskUtility
{
    public class Package
    {
        private Package() { }

        public Package(string name,string command)
        {
            Name = name;
            Command = command;
        }
        public int id { get; set; }

        public string Name { get; set; }

        public string Command { get; set; }

        public bool ExecutePackage()
        {
            return true; //The logic to execute the desired SSIS package goes here. If the action is successful return
        }
    }
}
