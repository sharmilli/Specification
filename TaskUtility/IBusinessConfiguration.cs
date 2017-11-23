namespace TaskUtility
{
    public interface IBusinessConfiguration
    {
        int RuleId { get; set; }
        string Rule { get; set; }
        string Owner { get; set; }
        int DayOfMonth { get; set; }
        string Email { get; set; }
        Freequency RuleFreequency { get; set; }
        string Path { get; set; }

    }
}
