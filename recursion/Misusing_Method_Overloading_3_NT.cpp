// commit: c9353e306c304911cb96bbd9f5aeda9dd0820fb0
// url: https://github.com/apache/impala/commit/c9353e306c304911cb96bbd9f5aeda9dd0820fb0
// termination: false
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

	const Rule& operator=(const Rule& other)
	{
		*this = Rule(other);
		return *this;
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
	rule2.operator=(rule);
	return 0;
}
