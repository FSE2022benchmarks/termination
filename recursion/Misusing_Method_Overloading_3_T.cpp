// commit:c9353e306c304911cb96bbd9f5aeda9dd0820fb0
#include<string>
struct Rule{
	const std::string trigger;
	Rule()
	{
	}
	static Rule Create( const std::string& trigger)
	{
		return Rule(trigger);
	}
	Rule(const Rule& other): trigger( other.trigger )
	{
	}

		Rule(const std::string& trigger):trigger(trigger)
		{
		}
};
int main()
{
	const std::string test = "test";
	Rule rule(test);
	Rule rule2;
	return 0;
}
