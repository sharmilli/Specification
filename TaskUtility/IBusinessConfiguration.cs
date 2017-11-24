namespace TaskUtility
{
    public interface IBusinessConfiguration
    {
        int RuleId { get; set; }
        string Rule { get; set; }
        string Owner { get; set; }
        int NthWorkingDayOfMonth { get; set; }
        int RemainingWorkingDaysOfMonth { get; set; }
        string Email { get; set; }
        Freequency RuleFreequency { get; set; }
    }
}
