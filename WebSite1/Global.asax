<%@ Application Language="C#" %>
<%@ Import Namespace="WebSite1" %>
<%@ Import Namespace="System.Web.Optimization" %>
<%@ Import Namespace="System.Web.Routing" %>
<%@ Import Namespace="System.IO" %>
<%@ Import Namespace="Newtonsoft.Json" %>

<script runat="server">

    void Application_Start(object sender, EventArgs e)
    {
        RouteConfig.RegisterRoutes(RouteTable.Routes);
        BundleConfig.RegisterBundles(BundleTable.Bundles);

         string textFile = Server.MapPath("/Models/data.json");
            if (File.Exists(textFile))
            {
                // Read entire text file content in one string  
                string text = File.ReadAllText(textFile);
                DB.myDB = JsonConvert.DeserializeObject<List<dataclass>>(text);
                //Console.WriteLine(text);
            }
    }

</script>
