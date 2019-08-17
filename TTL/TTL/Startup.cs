using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(TTL.Startup))]
namespace TTL
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
