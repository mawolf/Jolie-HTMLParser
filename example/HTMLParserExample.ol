include "console.iol"
include "../HTMLParser.iol"

interface TestInterface {
  RequestResponse: 
  	getData(void)(HTMLDocument),
  	getDataSelection(void)(HTMLSelectionResult)
}

inputPort testInputPort {
	Protocol: http
	Location: "socket://localhost:8000/"
	Interfaces: TestInterface
}

main
{

	getDataSelection()( res ) {
		selection.html = "<HTML>
 <HEAD>
 <TITLE> Odense-R�dhus </TITLE>
 </HEAD>
 <BODY bgcolor=\"ffffff\">
 <H2>Odense-R�dhus</H2>
 Bybaggrund<HR WIDTH=100% SIZE=1>
 <font size=-1>
 <strong>Stofliste</strong>:NO<sub>2 </sub>: Kv�lstofdioxid,&nbsp;&nbsp;&nbsp;NO<sub>x </sub>: Kv�lstofoxider,&nbsp;&nbsp;&nbsp;O<sub>3 </sub>: Ozon,&nbsp;&nbsp;&nbsp;<BR>
 <HR WIDTH=100% SIZE=1>
 
 <font size=-1 color=\"000000\">Data kontrolleres automatisk - men der er ikke foretaget afsluttende kontrol
 <font size=-1 color=\"ff0000\"> - der tages derfor forbehold mht de n�jagtige v�rdier
 <P><font size=-1 color=\"000000\">
 Enheder: �g/m<sup>3</sup>, dog NO<sub>x</sub>: �g(NO<sub>2</sub>)/m<sup>3</sup><P>
 <TABLE COLSPEC=\"L20 L20 L20 L20 L20 \" BORDER=1 WIDTH=275 HEIGHT=10 CELLPADDING=1 Cellspacing=0>
 <TR><TD><strong><font size=-2>DATO - 2015</TD><TD><strong><font size=-2>&nbsp;Tid&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;NO<sub>2 </sub>&nbsp;&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;NO<sub>x </sub>&nbsp;&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;O<sub>3 </sub>&nbsp;&nbsp;&nbsp;</TD></TR>
 <TR><TD><center><font size=-2>5/3</TD><TD><center><font size=-2> 20-21</TD><TD><center><font size=-2>11.18</TD><TD><center><font size=-2>11.76</TD><TD><center><font size=-2>61.42</TD></TR>
 <TR><TD><center><font size=-2>5/3</TD><TD><center><font size=-2> 19-20</TD><TD><center><font size=-2>13.21</TD><TD><center><font size=-2>13.42</TD><TD><center><font size=-2>62.10</TD></TR>
 <TR><TD><center><font size=-2>5/3</TD><TD><center><font size=-2> 18-19</TD><TD><center><font size=-2>17.51</TD><TD><center><font size=-2>18.09</TD><TD><center><font size=-2>61.57</TD></TR>
 <TR><TD><center><font size=-2>5/3</TD><TD><center><font size=-2> 17-18</TD><TD><center><font size=-2>15.08</TD><TD><center><font size=-2>15.88</TD><TD><center><font size=-2>68.86</TD></TR>
 <TR><TD><center><font size=-2>5/3</TD><TD><center><font size=-2> 16-17</TD><TD><center><font size=-2>14.75</TD><TD><center><font size=-2>16.43</TD><TD><center><font size=-2>70.19</TD></TR>
 <TR><TD><center><font size=-2>5/3</TD><TD><center><font size=-2> 15-16</TD><TD><center><font size=-2>12.94</TD><TD><center><font size=-2>15.38</TD><TD><center><font size=-2>74.06</TD></TR>
 <TR><TD><center><font size=-2>5/3</TD><TD><center><font size=-2> 14-15</TD><TD><center><font size=-2>12.40</TD><TD><center><font size=-2>15.28</TD><TD><center><font size=-2>74.11</TD></TR>
 <TR><TD><center><font size=-2>5/3</TD><TD><center><font size=-2> 13-14</TD><TD><center><font size=-2>9.57</TD><TD><center><font size=-2>12.57</TD><TD><center><font size=-2>77.30</TD></TR>
 <TR><TD><center><font size=-2>5/3</TD><TD><center><font size=-2> 12-13</TD><TD><center><font size=-2>9.96</TD><TD><center><font size=-2>13.16</TD><TD><center><font size=-2>74.55</TD></TR>
 <TR><TD><center><font size=-2>5/3</TD><TD><center><font size=-2> 11-12</TD><TD><center><font size=-2>11.76</TD><TD><center><font size=-2>15.31</TD><TD><center><font size=-2>70.07</TD></TR>
 <TR><TD><center><font size=-2>5/3</TD><TD><center><font size=-2> 10-11</TD><TD><center><font size=-2>12.89</TD><TD><center><font size=-2>16.87</TD><TD><center><font size=-2>68.52</TD></TR>
 <TR><TD><center><font size=-2>5/3</TD><TD><center><font size=-2> 9-10</TD><TD><center><font size=-2>18.86</TD><TD><center><font size=-2>25.76</TD><TD><center><font size=-2>59.58</TD></TR>
 <TR><TD><center><font size=-2>5/3</TD><TD><center><font size=-2> 8- 9</TD><TD><center><font size=-2>29.76</TD><TD><center><font size=-2>38.35</TD><TD><center><font size=-2>50.83</TD></TR>
 <TR><TD><center><font size=-2>5/3</TD><TD><center><font size=-2> 7- 8</TD><TD><center><font size=-2>23.72</TD><TD><center><font size=-2>27.42</TD><TD><center><font size=-2>54.93</TD></TR>
 <TR><TD><center><font size=-2>5/3</TD><TD><center><font size=-2> 6- 7</TD><TD><center><font size=-2>12.14</TD><TD><center><font size=-2>13.10</TD><TD><center><font size=-2>65.02</TD></TR>
 <TR><TD><center><font size=-2>5/3</TD><TD><center><font size=-2> 5- 6</TD><TD><center><font size=-2>16.04</TD><TD><center><font size=-2>16.90</TD><TD><center><font size=-2>59.60</TD></TR>
 <TR><TD><center><font size=-2>5/3</TD><TD><center><font size=-2> 4- 5</TD><TD><center><font size=-2>6.50</TD><TD><center><font size=-2>8.77</TD><TD><center><font size=-2>67.75</TD></TR>
 <TR><TD><center><font size=-2>5/3</TD><TD><center><font size=-2> 3- 4</TD><TD><center><font size=-2>5.17</TD><TD><center><font size=-2>5.42</TD><TD><center><font size=-2>67.10</TD></TR>
 <TR><TD><center><font size=-2>5/3</TD><TD><center><font size=-2> 2- 3</TD><TD><center><font size=-2>6.44</TD><TD><center><font size=-2>6.52</TD><TD><center><font size=-2>63.84</TD></TR>
 <TR><TD><center><font size=-2>5/3</TD><TD><center><font size=-2> 1- 2</TD><TD><center><font size=-2>9.79</TD><TD><center><font size=-2>10.42</TD><TD><center><font size=-2>58.64</TD></TR>
 <TR><TD><center><font size=-2>5/3</TD><TD><center><font size=-2> 0- 1</TD><TD><center><font size=-2>9.97</TD><TD><center><font size=-2>10.47</TD><TD><center><font size=-2>56.60</TD></TR>
 <TR><TD><strong><font size=-2>DATO - 2015</TD><TD><strong><font size=-2>&nbsp;Tid&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;NO<sub>2 </sub>&nbsp;&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;NO<sub>x </sub>&nbsp;&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;O<sub>3 </sub>&nbsp;&nbsp;&nbsp;</TD></TR>
 <TR><TD><center><font size=-2>4/3</TD><TD><center><font size=-2> 23-24</TD><TD><center><font size=-2>15.05</TD><TD><center><font size=-2>15.32</TD><TD><center><font size=-2>49.06</TD></TR>
 <TR><TD><center><font size=-2>4/3</TD><TD><center><font size=-2> 22-23</TD><TD><center><font size=-2>17.81</TD><TD><center><font size=-2>18.65</TD><TD><center><font size=-2>45.83</TD></TR>
 <TR><TD><center><font size=-2>4/3</TD><TD><center><font size=-2> 21-22</TD><TD><center><font size=-2>20.34</TD><TD><center><font size=-2>20.92</TD><TD><center><font size=-2>48.03</TD></TR>
 <TR><TD><center><font size=-2>4/3</TD><TD><center><font size=-2> 20-21</TD><TD><center><font size=-2>15.14</TD><TD><center><font size=-2>15.91</TD><TD><center><font size=-2>65.48</TD></TR>
 <TR><TD><center><font size=-2>4/3</TD><TD><center><font size=-2> 19-20</TD><TD><center><font size=-2>11.36</TD><TD><center><font size=-2>12.22</TD><TD><center><font size=-2>71.04</TD></TR>
 <TR><TD><center><font size=-2>4/3</TD><TD><center><font size=-2> 18-19</TD><TD><center><font size=-2>20.87</TD><TD><center><font size=-2>21.99</TD><TD><center><font size=-2>62.71</TD></TR>
 <TR><TD><center><font size=-2>4/3</TD><TD><center><font size=-2> 17-18</TD><TD><center><font size=-2>12.19</TD><TD><center><font size=-2>12.82</TD><TD><center><font size=-2>70.40</TD></TR>
 <TR><TD><center><font size=-2>4/3</TD><TD><center><font size=-2> 16-17</TD><TD><center><font size=-2>10.52</TD><TD><center><font size=-2>11.16</TD><TD><center><font size=-2>73.62</TD></TR>
 <TR><TD><center><font size=-2>4/3</TD><TD><center><font size=-2> 15-16</TD><TD><center><font size=-2>8.97</TD><TD><center><font size=-2>10.28</TD><TD><center><font size=-2>75.65</TD></TR>
 <TR><TD><center><font size=-2>4/3</TD><TD><center><font size=-2> 14-15</TD><TD><center><font size=-2>16.61</TD><TD><center><font size=-2>18.16</TD><TD><center><font size=-2>67.62</TD></TR>
 <TR><TD><center><font size=-2>4/3</TD><TD><center><font size=-2> 13-14</TD><TD><center><font size=-2>19.77</TD><TD><center><font size=-2>23.88</TD><TD><center><font size=-2>63.08</TD></TR>
 <TR><TD><center><font size=-2>4/3</TD><TD><center><font size=-2> 12-13</TD><TD><center><font size=-2>17.82</TD><TD><center><font size=-2>20.52</TD><TD><center><font size=-2>67.92</TD></TR>
 <TR><TD><center><font size=-2>4/3</TD><TD><center><font size=-2> 11-12</TD><TD><center><font size=-2>13.02</TD><TD><center><font size=-2>14.73</TD><TD><center><font size=-2>74.49</TD></TR>
 <TR><TD><center><font size=-2>4/3</TD><TD><center><font size=-2> 10-11</TD><TD><center><font size=-2>17.53</TD><TD><center><font size=-2>22.49</TD><TD><center><font size=-2>56.12</TD></TR>
 <TR><TD><center><font size=-2>4/3</TD><TD><center><font size=-2> 9-10</TD><TD><center><font size=-2>19.79</TD><TD><center><font size=-2>22.94</TD><TD><center><font size=-2>55.42</TD></TR>
 <TR><TD><center><font size=-2>4/3</TD><TD><center><font size=-2> 8- 9</TD><TD><center><font size=-2>31.79</TD><TD><center><font size=-2>38.88</TD><TD><center><font size=-2>45.49</TD></TR>
 <TR><TD><center><font size=-2>4/3</TD><TD><center><font size=-2> 7- 8</TD><TD><center><font size=-2>38.84</TD><TD><center><font size=-2>46.81</TD><TD><center><font size=-2>37.57</TD></TR>
 <TR><TD><center><font size=-2>4/3</TD><TD><center><font size=-2> 6- 7</TD><TD><center><font size=-2>13.77</TD><TD><center><font size=-2>14.26</TD><TD><center><font size=-2>61.68</TD></TR>
 <TR><TD><center><font size=-2>4/3</TD><TD><center><font size=-2> 5- 6</TD><TD><center><font size=-2>6.41</TD><TD><center><font size=-2>5.92</TD><TD><center><font size=-2>68.96</TD></TR>
 <TR><TD><center><font size=-2>4/3</TD><TD><center><font size=-2> 4- 5</TD><TD><center><font size=-2>5.68</TD><TD><center><font size=-2>5.75</TD><TD><center><font size=-2>69.64</TD></TR>
 <TR><TD><center><font size=-2>4/3</TD><TD><center><font size=-2> 3- 4</TD><TD><center><font size=-2>5.29</TD><TD><center><font size=-2>5.33</TD><TD><center><font size=-2>72.57</TD></TR>
 <TR><TD><center><font size=-2>4/3</TD><TD><center><font size=-2> 2- 3</TD><TD><center><font size=-2>3.76</TD><TD><center><font size=-2>3.45</TD><TD><center><font size=-2>74.02</TD></TR>
 <TR><TD><center><font size=-2>4/3</TD><TD><center><font size=-2> 1- 2</TD><TD><center><font size=-2>3.09</TD><TD><center><font size=-2>2.89</TD><TD><center><font size=-2>75.00</TD></TR>
 <TR><TD><center><font size=-2>4/3</TD><TD><center><font size=-2> 0- 1</TD><TD><center><font size=-2>3.03</TD><TD><center><font size=-2>2.57</TD><TD><center><font size=-2>79.43</TD></TR>
 <TR><TD><strong><font size=-2>DATO - 2015</TD><TD><strong><font size=-2>&nbsp;Tid&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;NO<sub>2 </sub>&nbsp;&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;NO<sub>x </sub>&nbsp;&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;O<sub>3 </sub>&nbsp;&nbsp;&nbsp;</TD></TR>
 <TR><TD><center><font size=-2>3/3</TD><TD><center><font size=-2> 23-24</TD><TD><center><font size=-2>3.80</TD><TD><center><font size=-2>3.64</TD><TD><center><font size=-2>77.75</TD></TR>
 <TR><TD><center><font size=-2>3/3</TD><TD><center><font size=-2> 22-23</TD><TD><center><font size=-2>5.99</TD><TD><center><font size=-2>5.94</TD><TD><center><font size=-2>73.25</TD></TR>
 <TR><TD><center><font size=-2>3/3</TD><TD><center><font size=-2> 21-22</TD><TD><center><font size=-2>6.81</TD><TD><center><font size=-2>6.84</TD><TD><center><font size=-2>74.41</TD></TR>
 <TR><TD><center><font size=-2>3/3</TD><TD><center><font size=-2> 20-21</TD><TD><center><font size=-2>5.82</TD><TD><center><font size=-2>5.78</TD><TD><center><font size=-2>76.57</TD></TR>
 <TR><TD><center><font size=-2>3/3</TD><TD><center><font size=-2> 19-20</TD><TD><center><font size=-2>16.22</TD><TD><center><font size=-2>16.47</TD><TD><center><font size=-2>64.50</TD></TR>
 <TR><TD><center><font size=-2>3/3</TD><TD><center><font size=-2> 18-19</TD><TD><center><font size=-2>19.80</TD><TD><center><font size=-2>20.30</TD><TD><center><font size=-2>61.22</TD></TR>
 <TR><TD><center><font size=-2>3/3</TD><TD><center><font size=-2> 17-18</TD><TD><center><font size=-2>15.46</TD><TD><center><font size=-2>16.54</TD><TD><center><font size=-2>68.05</TD></TR>
 <TR><TD><center><font size=-2>3/3</TD><TD><center><font size=-2> 16-17</TD><TD><center><font size=-2>10.71</TD><TD><center><font size=-2>11.68</TD><TD><center><font size=-2>75.79</TD></TR>
 <TR><TD><center><font size=-2>3/3</TD><TD><center><font size=-2> 15-16</TD><TD><center><font size=-2>6.69</TD><TD><center><font size=-2>7.89</TD><TD><center><font size=-2>79.90</TD></TR>
 <TR><TD><center><font size=-2>3/3</TD><TD><center><font size=-2> 14-15</TD><TD><center><font size=-2>9.11</TD><TD><center><font size=-2>11.74</TD><TD><center><font size=-2>77.38</TD></TR>
 <TR><TD><center><font size=-2>3/3</TD><TD><center><font size=-2> 13-14</TD><TD><center><font size=-2>11.09</TD><TD><center><font size=-2>14.02</TD><TD><center><font size=-2>77.93</TD></TR>
 <TR><TD><center><font size=-2>3/3</TD><TD><center><font size=-2> 12-13</TD><TD><center><font size=-2>6.16</TD><TD><center><font size=-2>7.95</TD><TD><center><font size=-2>77.18</TD></TR>
 <TR><TD><center><font size=-2>3/3</TD><TD><center><font size=-2> 11-12</TD><TD><center><font size=-2>5.38</TD><TD><center><font size=-2>6.97</TD><TD><center><font size=-2>76.71</TD></TR>
 <TR><TD><center><font size=-2>3/3</TD><TD><center><font size=-2> 10-11</TD><TD><center><font size=-2>6.40</TD><TD><center><font size=-2>7.44</TD><TD><center><font size=-2>74.58</TD></TR>
 <TR><TD><center><font size=-2>3/3</TD><TD><center><font size=-2> 9-10</TD><TD><center><font size=-2>6.52</TD><TD><center><font size=-2>7.66</TD><TD><center><font size=-2>74.99</TD></TR>
 <TR><TD><center><font size=-2>3/3</TD><TD><center><font size=-2> 8- 9</TD><TD><center><font size=-2>9.48</TD><TD><center><font size=-2>11.03</TD><TD><center><font size=-2>69.29</TD></TR>
 <TR><TD><center><font size=-2>3/3</TD><TD><center><font size=-2> 7- 8</TD><TD><center><font size=-2>14.11</TD><TD><center><font size=-2>14.89</TD><TD><center><font size=-2>65.71</TD></TR>
 <TR><TD><center><font size=-2>3/3</TD><TD><center><font size=-2> 6- 7</TD><TD><center><font size=-2>8.33</TD><TD><center><font size=-2>8.55</TD><TD><center><font size=-2>73.06</TD></TR>
 <TR><TD><center><font size=-2>3/3</TD><TD><center><font size=-2> 5- 6</TD><TD><center><font size=-2>5.88</TD><TD><center><font size=-2>6.55</TD><TD><center><font size=-2>78.73</TD></TR>
 <TR><TD><center><font size=-2>3/3</TD><TD><center><font size=-2> 4- 5</TD><TD><center><font size=-2>3.70</TD><TD><center><font size=-2>3.74</TD><TD><center><font size=-2>77.17</TD></TR>
 <TR><TD><center><font size=-2>3/3</TD><TD><center><font size=-2> 3- 4</TD><TD><center><font size=-2>3.44</TD><TD><center><font size=-2>3.38</TD><TD><center><font size=-2>72.48</TD></TR>
 <TR><TD><center><font size=-2>3/3</TD><TD><center><font size=-2> 2- 3</TD><TD><center><font size=-2>3.49</TD><TD><center><font size=-2>3.37</TD><TD><center><font size=-2>75.39</TD></TR>
 <TR><TD><center><font size=-2>3/3</TD><TD><center><font size=-2> 1- 2</TD><TD><center><font size=-2>3.71</TD><TD><center><font size=-2>3.41</TD><TD><center><font size=-2>75.28</TD></TR>
 <TR><TD><center><font size=-2>3/3</TD><TD><center><font size=-2> 0- 1</TD><TD><center><font size=-2>4.40</TD><TD><center><font size=-2>4.51</TD><TD><center><font size=-2>71.71</TD></TR>
 <TR><TD><strong><font size=-2>DATO - 2015</TD><TD><strong><font size=-2>&nbsp;Tid&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;NO<sub>2 </sub>&nbsp;&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;NO<sub>x </sub>&nbsp;&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;O<sub>3 </sub>&nbsp;&nbsp;&nbsp;</TD></TR>
 <TR><TD><center><font size=-2>2/3</TD><TD><center><font size=-2> 23-24</TD><TD><center><font size=-2>4.97</TD><TD><center><font size=-2>4.69</TD><TD><center><font size=-2>72.24</TD></TR>
 <TR><TD><center><font size=-2>2/3</TD><TD><center><font size=-2> 22-23</TD><TD><center><font size=-2>4.84</TD><TD><center><font size=-2>4.81</TD><TD><center><font size=-2>77.51</TD></TR>
 <TR><TD><center><font size=-2>2/3</TD><TD><center><font size=-2> 21-22</TD><TD><center><font size=-2>5.04</TD><TD><center><font size=-2>5.18</TD><TD><center><font size=-2>81.17</TD></TR>
 <TR><TD><center><font size=-2>2/3</TD><TD><center><font size=-2> 20-21</TD><TD><center><font size=-2>8.46</TD><TD><center><font size=-2>8.41</TD><TD><center><font size=-2>76.28</TD></TR>
 <TR><TD><center><font size=-2>2/3</TD><TD><center><font size=-2> 19-20</TD><TD><center><font size=-2>6.42</TD><TD><center><font size=-2>6.62</TD><TD><center><font size=-2>81.06</TD></TR>
 <TR><TD><center><font size=-2>2/3</TD><TD><center><font size=-2> 18-19</TD><TD><center><font size=-2>7.45</TD><TD><center><font size=-2>7.69</TD><TD><center><font size=-2>79.21</TD></TR>
 <TR><TD><center><font size=-2>2/3</TD><TD><center><font size=-2> 17-18</TD><TD><center><font size=-2>9.28</TD><TD><center><font size=-2>10.00</TD><TD><center><font size=-2>76.91</TD></TR>
 <TR><TD><center><font size=-2>2/3</TD><TD><center><font size=-2> 16-17</TD><TD><center><font size=-2>13.27</TD><TD><center><font size=-2>14.34</TD><TD><center><font size=-2>72.92</TD></TR>
 <TR><TD><center><font size=-2>2/3</TD><TD><center><font size=-2> 15-16</TD><TD><center><font size=-2>9.11</TD><TD><center><font size=-2>10.32</TD><TD><center><font size=-2>79.61</TD></TR>
 <TR><TD><center><font size=-2>2/3</TD><TD><center><font size=-2> 14-15</TD><TD><center><font size=-2>7.38</TD><TD><center><font size=-2>8.54</TD><TD><center><font size=-2>79.01</TD></TR>
 <TR><TD><center><font size=-2>2/3</TD><TD><center><font size=-2> 13-14</TD><TD><center><font size=-2>5.70</TD><TD><center><font size=-2>7.02</TD><TD><center><font size=-2>78.56</TD></TR>
 <TR><TD><center><font size=-2>2/3</TD><TD><center><font size=-2> 12-13</TD><TD><center><font size=-2>7.24</TD><TD><center><font size=-2>7.96</TD><TD><center><font size=-2>76.02</TD></TR>
 <TR><TD><center><font size=-2>2/3</TD><TD><center><font size=-2> 11-12</TD><TD><center><font size=-2>6.87</TD><TD><center><font size=-2>8.63</TD><TD><center><font size=-2>76.56</TD></TR>
 <TR><TD><center><font size=-2>2/3</TD><TD><center><font size=-2> 10-11</TD><TD><center><font size=-2>11.61</TD><TD><center><font size=-2>14.09</TD><TD><center><font size=-2>71.75</TD></TR>
 <TR><TD><center><font size=-2>2/3</TD><TD><center><font size=-2> 9-10</TD><TD><center><font size=-2>13.11</TD><TD><center><font size=-2>15.36</TD><TD><center><font size=-2>71.62</TD></TR>
 <TR><TD><center><font size=-2>2/3</TD><TD><center><font size=-2> 8- 9</TD><TD><center><font size=-2>14.96</TD><TD><center><font size=-2>16.22</TD><TD><center><font size=-2>67.97</TD></TR>
 <TR><TD><center><font size=-2>2/3</TD><TD><center><font size=-2> 7- 8</TD><TD><center><font size=-2>19.97</TD><TD><center><font size=-2>21.30</TD><TD><center><font size=-2>56.18</TD></TR>
 <TR><TD><center><font size=-2>2/3</TD><TD><center><font size=-2> 6- 7</TD><TD><center><font size=-2>12.73</TD><TD><center><font size=-2>13.30</TD><TD><center><font size=-2>59.26</TD></TR>
 <TR><TD><center><font size=-2>2/3</TD><TD><center><font size=-2> 5- 6</TD><TD><center><font size=-2>9.76</TD><TD><center><font size=-2>10.08</TD><TD><center><font size=-2>59.36</TD></TR>
 <TR><TD><center><font size=-2>2/3</TD><TD><center><font size=-2> 4- 5</TD><TD><center><font size=-2>10.21</TD><TD><center><font size=-2>10.48</TD><TD><center><font size=-2>56.20</TD></TR>
 <TR><TD><center><font size=-2>2/3</TD><TD><center><font size=-2> 3- 4</TD><TD><center><font size=-2>7.87</TD><TD><center><font size=-2>7.90</TD><TD><center><font size=-2>60.35</TD></TR>
 <TR><TD><center><font size=-2>2/3</TD><TD><center><font size=-2> 2- 3</TD><TD><center><font size=-2>12.66</TD><TD><center><font size=-2>12.93</TD><TD><center><font size=-2>56.96</TD></TR>
 <TR><TD><center><font size=-2>2/3</TD><TD><center><font size=-2> 1- 2</TD><TD><center><font size=-2>13.27</TD><TD><center><font size=-2>13.39</TD><TD><center><font size=-2>60.20</TD></TR>
 <TR><TD><center><font size=-2>2/3</TD><TD><center><font size=-2> 0- 1</TD><TD><center><font size=-2>6.53</TD><TD><center><font size=-2>7.00</TD><TD><center><font size=-2>66.19</TD></TR>
 <TR><TD><strong><font size=-2>DATO - 2015</TD><TD><strong><font size=-2>&nbsp;Tid&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;NO<sub>2 </sub>&nbsp;&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;NO<sub>x </sub>&nbsp;&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;O<sub>3 </sub>&nbsp;&nbsp;&nbsp;</TD></TR>
 <TR><TD><center><font size=-2>1/3</TD><TD><center><font size=-2> 23-24</TD><TD><center><font size=-2>5.16</TD><TD><center><font size=-2>5.22</TD><TD><center><font size=-2>70.76</TD></TR>
 <TR><TD><center><font size=-2>1/3</TD><TD><center><font size=-2> 22-23</TD><TD><center><font size=-2>5.45</TD><TD><center><font size=-2>5.68</TD><TD><center><font size=-2>72.18</TD></TR>
 <TR><TD><center><font size=-2>1/3</TD><TD><center><font size=-2> 21-22</TD><TD><center><font size=-2>5.03</TD><TD><center><font size=-2>5.22</TD><TD><center><font size=-2>74.21</TD></TR>
 <TR><TD><center><font size=-2>1/3</TD><TD><center><font size=-2> 20-21</TD><TD><center><font size=-2>4.77</TD><TD><center><font size=-2>4.66</TD><TD><center><font size=-2>75.76</TD></TR>
 <TR><TD><center><font size=-2>1/3</TD><TD><center><font size=-2> 19-20</TD><TD><center><font size=-2>4.78</TD><TD><center><font size=-2>4.37</TD><TD><center><font size=-2>77.27</TD></TR>
 <TR><TD><center><font size=-2>1/3</TD><TD><center><font size=-2> 18-19</TD><TD><center><font size=-2>4.78</TD><TD><center><font size=-2>4.78</TD><TD><center><font size=-2>77.53</TD></TR>
 <TR><TD><center><font size=-2>1/3</TD><TD><center><font size=-2> 17-18</TD><TD><center><font size=-2>5.18</TD><TD><center><font size=-2>5.28</TD><TD><center><font size=-2>77.30</TD></TR>
 <TR><TD><center><font size=-2>1/3</TD><TD><center><font size=-2> 16-17</TD><TD><center><font size=-2>5.40</TD><TD><center><font size=-2>5.62</TD><TD><center><font size=-2>78.58</TD></TR>
 <TR><TD><center><font size=-2>1/3</TD><TD><center><font size=-2> 15-16</TD><TD><center><font size=-2>4.86</TD><TD><center><font size=-2>5.32</TD><TD><center><font size=-2>79.57</TD></TR>
 <TR><TD><center><font size=-2>1/3</TD><TD><center><font size=-2> 14-15</TD><TD><center><font size=-2>5.68</TD><TD><center><font size=-2>6.36</TD><TD><center><font size=-2>77.70</TD></TR>
 <TR><TD><center><font size=-2>1/3</TD><TD><center><font size=-2> 13-14</TD><TD><center><font size=-2>8.31</TD><TD><center><font size=-2>9.84</TD><TD><center><font size=-2>62.27</TD></TR>
 <TR><TD><center><font size=-2>1/3</TD><TD><center><font size=-2> 12-13</TD><TD><center><font size=-2>8.42</TD><TD><center><font size=-2>9.88</TD><TD><center><font size=-2>55.69</TD></TR>
 <TR><TD><center><font size=-2>1/3</TD><TD><center><font size=-2> 11-12</TD><TD><center><font size=-2>7.98</TD><TD><center><font size=-2>9.07</TD><TD><center><font size=-2>57.53</TD></TR>
 <TR><TD><center><font size=-2>1/3</TD><TD><center><font size=-2> 10-11</TD><TD><center><font size=-2>10.53</TD><TD><center><font size=-2>11.20</TD><TD><center><font size=-2>57.16</TD></TR>
 <TR><TD><center><font size=-2>1/3</TD><TD><center><font size=-2> 9-10</TD><TD><center><font size=-2>9.17</TD><TD><center><font size=-2>9.79</TD><TD><center><font size=-2>59.31</TD></TR>
 <TR><TD><center><font size=-2>1/3</TD><TD><center><font size=-2> 8- 9</TD><TD><center><font size=-2>7.51</TD><TD><center><font size=-2>7.62</TD><TD><center><font size=-2>60.34</TD></TR>
 <TR><TD><center><font size=-2>1/3</TD><TD><center><font size=-2> 7- 8</TD><TD><center><font size=-2>7.57</TD><TD><center><font size=-2>7.82</TD><TD><center><font size=-2>59.31</TD></TR>
 <TR><TD><center><font size=-2>1/3</TD><TD><center><font size=-2> 6- 7</TD><TD><center><font size=-2>7.98</TD><TD><center><font size=-2>7.88</TD><TD><center><font size=-2>58.79</TD></TR>
 <TR><TD><center><font size=-2>1/3</TD><TD><center><font size=-2> 5- 6</TD><TD><center><font size=-2>8.37</TD><TD><center><font size=-2>8.38</TD><TD><center><font size=-2>58.71</TD></TR>
 <TR><TD><center><font size=-2>1/3</TD><TD><center><font size=-2> 4- 5</TD><TD><center><font size=-2>8.52</TD><TD><center><font size=-2>8.48</TD><TD><center><font size=-2>58.46</TD></TR>
 <TR><TD><center><font size=-2>1/3</TD><TD><center><font size=-2> 3- 4</TD><TD><center><font size=-2>9.01</TD><TD><center><font size=-2>9.01</TD><TD><center><font size=-2>58.44</TD></TR>
 <TR><TD><center><font size=-2>1/3</TD><TD><center><font size=-2> 2- 3</TD><TD><center><font size=-2>9.76</TD><TD><center><font size=-2>9.87</TD><TD><center><font size=-2>58.53</TD></TR>
 <TR><TD><center><font size=-2>1/3</TD><TD><center><font size=-2> 1- 2</TD><TD><center><font size=-2>10.30</TD><TD><center><font size=-2>10.28</TD><TD><center><font size=-2>58.74</TD></TR>
 <TR><TD><center><font size=-2>1/3</TD><TD><center><font size=-2> 0- 1</TD><TD><center><font size=-2>11.32</TD><TD><center><font size=-2>11.38</TD><TD><center><font size=-2>57.93</TD></TR>
 <TR><TD><strong><font size=-2>DATO - 2015</TD><TD><strong><font size=-2>&nbsp;Tid&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;NO<sub>2 </sub>&nbsp;&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;NO<sub>x </sub>&nbsp;&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;O<sub>3 </sub>&nbsp;&nbsp;&nbsp;</TD></TR>
 <TR><TD><center><font size=-2>28/2</TD><TD><center><font size=-2> 23-24</TD><TD><center><font size=-2>11.17</TD><TD><center><font size=-2>11.36</TD><TD><center><font size=-2>58.85</TD></TR>
 <TR><TD><center><font size=-2>28/2</TD><TD><center><font size=-2> 22-23</TD><TD><center><font size=-2>13.71</TD><TD><center><font size=-2>13.49</TD><TD><center><font size=-2>55.95</TD></TR>
 <TR><TD><center><font size=-2>28/2</TD><TD><center><font size=-2> 21-22</TD><TD><center><font size=-2>13.99</TD><TD><center><font size=-2>13.75</TD><TD><center><font size=-2>58.18</TD></TR>
 <TR><TD><center><font size=-2>28/2</TD><TD><center><font size=-2> 20-21</TD><TD><center><font size=-2>17.90</TD><TD><center><font size=-2>17.97</TD><TD><center><font size=-2>56.25</TD></TR>
 <TR><TD><center><font size=-2>28/2</TD><TD><center><font size=-2> 19-20</TD><TD><center><font size=-2>19.68</TD><TD><center><font size=-2>19.93</TD><TD><center><font size=-2>56.34</TD></TR>
 <TR><TD><center><font size=-2>28/2</TD><TD><center><font size=-2> 18-19</TD><TD><center><font size=-2>21.37</TD><TD><center><font size=-2>21.94</TD><TD><center><font size=-2>54.90</TD></TR>
 <TR><TD><center><font size=-2>28/2</TD><TD><center><font size=-2> 17-18</TD><TD><center><font size=-2>15.37</TD><TD><center><font size=-2>16.00</TD><TD><center><font size=-2>63.81</TD></TR>
 <TR><TD><center><font size=-2>28/2</TD><TD><center><font size=-2> 16-17</TD><TD><center><font size=-2>11.38</TD><TD><center><font size=-2>12.78</TD><TD><center><font size=-2>69.48</TD></TR>
 <TR><TD><center><font size=-2>28/2</TD><TD><center><font size=-2> 15-16</TD><TD><center><font size=-2>10.13</TD><TD><center><font size=-2>11.96</TD><TD><center><font size=-2>68.08</TD></TR>
 <TR><TD><center><font size=-2>28/2</TD><TD><center><font size=-2> 14-15</TD><TD><center><font size=-2>10.42</TD><TD><center><font size=-2>12.89</TD><TD><center><font size=-2>66.08</TD></TR>
 <TR><TD><center><font size=-2>28/2</TD><TD><center><font size=-2> 13-14</TD><TD><center><font size=-2>9.19</TD><TD><center><font size=-2>11.78</TD><TD><center><font size=-2>66.38</TD></TR>
 <TR><TD><center><font size=-2>28/2</TD><TD><center><font size=-2> 12-13</TD><TD><center><font size=-2>6.99</TD><TD><center><font size=-2>9.63</TD><TD><center><font size=-2>70.57</TD></TR>
 <TR><TD><center><font size=-2>28/2</TD><TD><center><font size=-2> 11-12</TD><TD><center><font size=-2>6.53</TD><TD><center><font size=-2>8.92</TD><TD><center><font size=-2>71.53</TD></TR>
 <TR><TD><center><font size=-2>28/2</TD><TD><center><font size=-2> 10-11</TD><TD><center><font size=-2>8.89</TD><TD><center><font size=-2>11.32</TD><TD><center><font size=-2>67.56</TD></TR>
 <TR><TD><center><font size=-2>28/2</TD><TD><center><font size=-2> 9-10</TD><TD><center><font size=-2>14.23</TD><TD><center><font size=-2>16.30</TD><TD><center><font size=-2>55.02</TD></TR>
 <TR><TD><center><font size=-2>28/2</TD><TD><center><font size=-2> 8- 9</TD><TD><center><font size=-2>17.00</TD><TD><center><font size=-2>19.07</TD><TD><center><font size=-2>49.34</TD></TR>
 <TR><TD><center><font size=-2>28/2</TD><TD><center><font size=-2> 7- 8</TD><TD><center><font size=-2>18.48</TD><TD><center><font size=-2>19.83</TD><TD><center><font size=-2>43.64</TD></TR>
 <TR><TD><center><font size=-2>28/2</TD><TD><center><font size=-2> 6- 7</TD><TD><center><font size=-2>14.28</TD><TD><center><font size=-2>15.34</TD><TD><center><font size=-2>45.14</TD></TR>
 <TR><TD><center><font size=-2>28/2</TD><TD><center><font size=-2> 5- 6</TD><TD><center><font size=-2>12.99</TD><TD><center><font size=-2>13.61</TD><TD><center><font size=-2>46.22</TD></TR>
 <TR><TD><center><font size=-2>28/2</TD><TD><center><font size=-2> 4- 5</TD><TD><center><font size=-2>16.11</TD><TD><center><font size=-2>16.65</TD><TD><center><font size=-2>49.69</TD></TR>
 <TR><TD><center><font size=-2>28/2</TD><TD><center><font size=-2> 3- 4</TD><TD><center><font size=-2>10.83</TD><TD><center><font size=-2>10.78</TD><TD><center><font size=-2>61.32</TD></TR>
 <TR><TD><center><font size=-2>28/2</TD><TD><center><font size=-2> 2- 3</TD><TD><center><font size=-2>15.79</TD><TD><center><font size=-2>16.12</TD><TD><center><font size=-2>54.14</TD></TR>
 <TR><TD><center><font size=-2>28/2</TD><TD><center><font size=-2> 1- 2</TD><TD><center><font size=-2>14.57</TD><TD><center><font size=-2>15.15</TD><TD><center><font size=-2>57.62</TD></TR>
 <TR><TD><center><font size=-2>28/2</TD><TD><center><font size=-2> 0- 1</TD><TD><center><font size=-2>13.49</TD><TD><center><font size=-2>13.85</TD><TD><center><font size=-2>58.53</TD></TR>
 <TR><TD><strong><font size=-2>DATO - 2015</TD><TD><strong><font size=-2>&nbsp;Tid&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;NO<sub>2 </sub>&nbsp;&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;NO<sub>x </sub>&nbsp;&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;O<sub>3 </sub>&nbsp;&nbsp;&nbsp;</TD></TR>
 <TR><TD><center><font size=-2>27/2</TD><TD><center><font size=-2> 23-24</TD><TD><center><font size=-2>16.27</TD><TD><center><font size=-2>17.06</TD><TD><center><font size=-2>54.65</TD></TR>
 <TR><TD><center><font size=-2>27/2</TD><TD><center><font size=-2> 22-23</TD><TD><center><font size=-2>19.23</TD><TD><center><font size=-2>20.11</TD><TD><center><font size=-2>50.39</TD></TR>
 <TR><TD><center><font size=-2>27/2</TD><TD><center><font size=-2> 21-22</TD><TD><center><font size=-2>48.34</TD><TD><center><font size=-2>58.48</TD><TD><center><font size=-2>18.01</TD></TR>
 <TR><TD><center><font size=-2>27/2</TD><TD><center><font size=-2> 20-21</TD><TD><center><font size=-2>59.86</TD><TD><center><font size=-2>72.41</TD><TD><center><font size=-2>9.87</TD></TR>
 <TR><TD><center><font size=-2>27/2</TD><TD><center><font size=-2> 19-20</TD><TD><center><font size=-2>44.34</TD><TD><center><font size=-2>47.64</TD><TD><center><font size=-2>24.44</TD></TR>
 <TR><TD><center><font size=-2>27/2</TD><TD><center><font size=-2> 18-19</TD><TD><center><font size=-2>32.04</TD><TD><center><font size=-2>34.23</TD><TD><center><font size=-2>38.66</TD></TR>
 <TR><TD><center><font size=-2>27/2</TD><TD><center><font size=-2> 17-18</TD><TD><center><font size=-2>25.96</TD><TD><center><font size=-2>28.47</TD><TD><center><font size=-2>45.66</TD></TR>
 <TR><TD><center><font size=-2>27/2</TD><TD><center><font size=-2> 16-17</TD><TD><center><font size=-2>22.79</TD><TD><center><font size=-2>27.92</TD><TD><center><font size=-2>44.04</TD></TR>
 <TR><TD><center><font size=-2>27/2</TD><TD><center><font size=-2> 15-16</TD><TD><center><font size=-2>26.20</TD><TD><center><font size=-2>35.47</TD><TD><center><font size=-2>33.12</TD></TR>
 <TR><TD><center><font size=-2>27/2</TD><TD><center><font size=-2> 14-15</TD><TD><center><font size=-2>25.00</TD><TD><center><font size=-2>34.35</TD><TD><center><font size=-2>30.27</TD></TR>
 <TR><TD><center><font size=-2>27/2</TD><TD><center><font size=-2> 13-14</TD><TD><center><font size=-2>33.00</TD><TD><center><font size=-2>45.91</TD><TD><center><font size=-2>23.25</TD></TR>
 <TR><TD><center><font size=-2>27/2</TD><TD><center><font size=-2> 12-13</TD><TD><center><font size=-2>34.23</TD><TD><center><font size=-2>48.96</TD><TD><center><font size=-2>22.87</TD></TR>
 <TR><TD><center><font size=-2>27/2</TD><TD><center><font size=-2> 11-12</TD><TD><center><font size=-2>33.78</TD><TD><center><font size=-2>51.09</TD><TD><center><font size=-2>23.32</TD></TR>
 <TR><TD><center><font size=-2>27/2</TD><TD><center><font size=-2> 10-11</TD><TD><center><font size=-2>28.20</TD><TD><center><font size=-2>35.51</TD><TD><center><font size=-2>25.84</TD></TR>
 <TR><TD><center><font size=-2>27/2</TD><TD><center><font size=-2> 9-10</TD><TD><center><font size=-2>28.24</TD><TD><center><font size=-2>34.91</TD><TD><center><font size=-2>27.08</TD></TR>
 <TR><TD><center><font size=-2>27/2</TD><TD><center><font size=-2> 8- 9</TD><TD><center><font size=-2>33.40</TD><TD><center><font size=-2>39.50</TD><TD><center><font size=-2>24.68</TD></TR>
 <TR><TD><center><font size=-2>27/2</TD><TD><center><font size=-2> 7- 8</TD><TD><center><font size=-2>23.23</TD><TD><center><font size=-2>25.06</TD><TD><center><font size=-2>33.69</TD></TR>
 <TR><TD><center><font size=-2>27/2</TD><TD><center><font size=-2> 6- 7</TD><TD><center><font size=-2>11.85</TD><TD><center><font size=-2>12.68</TD><TD><center><font size=-2>44.78</TD></TR>
 <TR><TD><center><font size=-2>27/2</TD><TD><center><font size=-2> 5- 6</TD><TD><center><font size=-2>9.57</TD><TD><center><font size=-2>10.22</TD><TD><center><font size=-2>49.60</TD></TR>
 <TR><TD><center><font size=-2>27/2</TD><TD><center><font size=-2> 4- 5</TD><TD><center><font size=-2>8.03</TD><TD><center><font size=-2>8.61</TD><TD><center><font size=-2>52.98</TD></TR>
 <TR><TD><center><font size=-2>27/2</TD><TD><center><font size=-2> 3- 4</TD><TD><center><font size=-2>13.08</TD><TD><center><font size=-2>13.87</TD><TD><center><font size=-2>53.44</TD></TR>
 <TR><TD><center><font size=-2>27/2</TD><TD><center><font size=-2> 2- 3</TD><TD><center><font size=-2>12.21</TD><TD><center><font size=-2>13.12</TD><TD><center><font size=-2>55.74</TD></TR>
 <TR><TD><center><font size=-2>27/2</TD><TD><center><font size=-2> 1- 2</TD><TD><center><font size=-2>9.33</TD><TD><center><font size=-2>10.02</TD><TD><center><font size=-2>59.26</TD></TR>
 <TR><TD><center><font size=-2>27/2</TD><TD><center><font size=-2> 0- 1</TD><TD><center><font size=-2>10.27</TD><TD><center><font size=-2>10.27</TD><TD><center><font size=-2>59.48</TD></TR>
 <TR><TD><strong><font size=-2>DATO - 2015</TD><TD><strong><font size=-2>&nbsp;Tid&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;NO<sub>2 </sub>&nbsp;&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;NO<sub>x </sub>&nbsp;&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;O<sub>3 </sub>&nbsp;&nbsp;&nbsp;</TD></TR>
 <TR><TD><center><font size=-2>26/2</TD><TD><center><font size=-2> 23-24</TD><TD><center><font size=-2>10.23</TD><TD><center><font size=-2>10.71</TD><TD><center><font size=-2>61.71</TD></TR>
 <TR><TD><center><font size=-2>26/2</TD><TD><center><font size=-2> 22-23</TD><TD><center><font size=-2>9.94</TD><TD><center><font size=-2>10.44</TD><TD><center><font size=-2>65.82</TD></TR>
 <TR><TD><center><font size=-2>26/2</TD><TD><center><font size=-2> 21-22</TD><TD><center><font size=-2>10.32</TD><TD><center><font size=-2>10.42</TD><TD><center><font size=-2>67.30</TD></TR>
 <TR><TD><center><font size=-2>26/2</TD><TD><center><font size=-2> 20-21</TD><TD><center><font size=-2>10.13</TD><TD><center><font size=-2>10.26</TD><TD><center><font size=-2>67.83</TD></TR>
 <TR><TD><center><font size=-2>26/2</TD><TD><center><font size=-2> 19-20</TD><TD><center><font size=-2>11.92</TD><TD><center><font size=-2>12.16</TD><TD><center><font size=-2>64.07</TD></TR>
 <TR><TD><center><font size=-2>26/2</TD><TD><center><font size=-2> 18-19</TD><TD><center><font size=-2>16.08</TD><TD><center><font size=-2>16.67</TD><TD><center><font size=-2>55.25</TD></TR>
 <TR><TD><center><font size=-2>26/2</TD><TD><center><font size=-2> 17-18</TD><TD><center><font size=-2>13.22</TD><TD><center><font size=-2>13.94</TD><TD><center><font size=-2>56.30</TD></TR>
 <TR><TD><center><font size=-2>26/2</TD><TD><center><font size=-2> 16-17</TD><TD><center><font size=-2>13.51</TD><TD><center><font size=-2>15.12</TD><TD><center><font size=-2>55.12</TD></TR>
 <TR><TD><center><font size=-2>26/2</TD><TD><center><font size=-2> 15-16</TD><TD><center><font size=-2>15.33</TD><TD><center><font size=-2>17.78</TD><TD><center><font size=-2>50.64</TD></TR>
 <TR><TD><center><font size=-2>26/2</TD><TD><center><font size=-2> 14-15</TD><TD><center><font size=-2>16.76</TD><TD><center><font size=-2>20.96</TD><TD><center><font size=-2>45.76</TD></TR>
 <TR><TD><center><font size=-2>26/2</TD><TD><center><font size=-2> 13-14</TD><TD><center><font size=-2>15.15</TD><TD><center><font size=-2>21.16</TD><TD><center><font size=-2>42.77</TD></TR>
 <TR><TD><center><font size=-2>26/2</TD><TD><center><font size=-2> 12-13</TD><TD><center><font size=-2>15.49</TD><TD><center><font size=-2>21.39</TD><TD><center><font size=-2>38.08</TD></TR>
 <TR><TD><center><font size=-2>26/2</TD><TD><center><font size=-2> 11-12</TD><TD><center><font size=-2>17.49</TD><TD><center><font size=-2>24.38</TD><TD><center><font size=-2>36.56</TD></TR>
 <TR><TD><center><font size=-2>26/2</TD><TD><center><font size=-2> 10-11</TD><TD><center><font size=-2>15.12</TD><TD><center><font size=-2>19.51</TD><TD><center><font size=-2>46.79</TD></TR>
 <TR><TD><center><font size=-2>26/2</TD><TD><center><font size=-2> 9-10</TD><TD><center><font size=-2>15.95</TD><TD><center><font size=-2>21.94</TD><TD><center><font size=-2>46.00</TD></TR>
 <TR><TD><center><font size=-2>26/2</TD><TD><center><font size=-2> 8- 9</TD><TD><center><font size=-2>23.18</TD><TD><center><font size=-2>28.35</TD><TD><center><font size=-2>33.17</TD></TR>
 <TR><TD><center><font size=-2>26/2</TD><TD><center><font size=-2> 7- 8</TD><TD><center><font size=-2>34.40</TD><TD><center><font size=-2>41.60</TD><TD><center><font size=-2>17.90</TD></TR>
 <TR><TD><center><font size=-2>26/2</TD><TD><center><font size=-2> 6- 7</TD><TD><center><font size=-2>28.09</TD><TD><center><font size=-2>31.60</TD><TD><center><font size=-2>22.36</TD></TR>
 <TR><TD><center><font size=-2>26/2</TD><TD><center><font size=-2> 5- 6</TD><TD><center><font size=-2>20.05</TD><TD><center><font size=-2>20.92</TD><TD><center><font size=-2>30.37</TD></TR>
 <TR><TD><center><font size=-2>26/2</TD><TD><center><font size=-2> 4- 5</TD><TD><center><font size=-2>15.24</TD><TD><center><font size=-2>15.43</TD><TD><center><font size=-2>40.28</TD></TR>
 <TR><TD><center><font size=-2>26/2</TD><TD><center><font size=-2> 3- 4</TD><TD><center><font size=-2>17.02</TD><TD><center><font size=-2>17.63</TD><TD><center><font size=-2>40.32</TD></TR>
 <TR><TD><center><font size=-2>26/2</TD><TD><center><font size=-2> 2- 3</TD><TD><center><font size=-2>20.85</TD><TD><center><font size=-2>21.08</TD><TD><center><font size=-2>34.80</TD></TR>
 <TR><TD><center><font size=-2>26/2</TD><TD><center><font size=-2> 1- 2</TD><TD><center><font size=-2>18.87</TD><TD><center><font size=-2>19.07</TD><TD><center><font size=-2>40.85</TD></TR>
 <TR><TD><center><font size=-2>26/2</TD><TD><center><font size=-2> 0- 1</TD><TD><center><font size=-2>19.16</TD><TD><center><font size=-2>19.56</TD><TD><center><font size=-2>43.02</TD></TR>
 <TR><TD><strong><font size=-2>DATO - 2015</TD><TD><strong><font size=-2>&nbsp;Tid&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;NO<sub>2 </sub>&nbsp;&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;NO<sub>x </sub>&nbsp;&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;O<sub>3 </sub>&nbsp;&nbsp;&nbsp;</TD></TR>
 <TR><TD><center><font size=-2>25/2</TD><TD><center><font size=-2> 23-24</TD><TD><center><font size=-2>18.30</TD><TD><center><font size=-2>19.17</TD><TD><center><font size=-2>48.72</TD></TR>
 <TR><TD><center><font size=-2>25/2</TD><TD><center><font size=-2> 22-23</TD><TD><center><font size=-2>15.81</TD><TD><center><font size=-2>16.39</TD><TD><center><font size=-2>55.19</TD></TR>
 <TR><TD><center><font size=-2>25/2</TD><TD><center><font size=-2> 21-22</TD><TD><center><font size=-2>25.49</TD><TD><center><font size=-2>26.55</TD><TD><center><font size=-2>43.81</TD></TR>
 <TR><TD><center><font size=-2>25/2</TD><TD><center><font size=-2> 20-21</TD><TD><center><font size=-2>25.04</TD><TD><center><font size=-2>25.95</TD><TD><center><font size=-2>48.22</TD></TR>
 <TR><TD><center><font size=-2>25/2</TD><TD><center><font size=-2> 19-20</TD><TD><center><font size=-2>24.45</TD><TD><center><font size=-2>25.38</TD><TD><center><font size=-2>52.71</TD></TR>
 <TR><TD><center><font size=-2>25/2</TD><TD><center><font size=-2> 18-19</TD><TD><center><font size=-2>22.38</TD><TD><center><font size=-2>23.42</TD><TD><center><font size=-2>57.58</TD></TR>
 <TR><TD><center><font size=-2>25/2</TD><TD><center><font size=-2> 17-18</TD><TD><center><font size=-2>14.10</TD><TD><center><font size=-2>14.77</TD><TD><center><font size=-2>69.19</TD></TR>
 <TR><TD><center><font size=-2>25/2</TD><TD><center><font size=-2> 16-17</TD><TD><center><font size=-2>11.68</TD><TD><center><font size=-2>13.50</TD><TD><center><font size=-2>73.69</TD></TR>
 <TR><TD><center><font size=-2>25/2</TD><TD><center><font size=-2> 15-16</TD><TD><center><font size=-2>11.66</TD><TD><center><font size=-2>14.02</TD><TD><center><font size=-2>72.14</TD></TR>
 <TR><TD><center><font size=-2>25/2</TD><TD><center><font size=-2> 14-15</TD><TD><center><font size=-2>10.55</TD><TD><center><font size=-2>12.97</TD><TD><center><font size=-2>72.77</TD></TR>
 <TR><TD><center><font size=-2>25/2</TD><TD><center><font size=-2> 13-14</TD><TD><center><font size=-2>10.57</TD><TD><center><font size=-2>12.90</TD><TD><center><font size=-2>73.99</TD></TR>
 <TR><TD><center><font size=-2>25/2</TD><TD><center><font size=-2> 12-13</TD><TD><center><font size=-2>9.70</TD><TD><center><font size=-2>11.99</TD><TD><center><font size=-2>68.82</TD></TR>
 <TR><TD><center><font size=-2>25/2</TD><TD><center><font size=-2> 11-12</TD><TD><center><font size=-2>9.91</TD><TD><center><font size=-2>13.15</TD><TD><center><font size=-2>67.72</TD></TR>
 <TR><TD><center><font size=-2>25/2</TD><TD><center><font size=-2> 10-11</TD><TD><center><font size=-2>11.50</TD><TD><center><font size=-2>14.44</TD><TD><center><font size=-2>65.02</TD></TR>
 <TR><TD><center><font size=-2>25/2</TD><TD><center><font size=-2> 9-10</TD><TD><center><font size=-2>12.06</TD><TD><center><font size=-2>14.80</TD><TD><center><font size=-2>67.57</TD></TR>
 <TR><TD><center><font size=-2>25/2</TD><TD><center><font size=-2> 8- 9</TD><TD><center><font size=-2>18.12</TD><TD><center><font size=-2>21.93</TD><TD><center><font size=-2>53.63</TD></TR>
 <TR><TD><center><font size=-2>25/2</TD><TD><center><font size=-2> 7- 8</TD><TD><center><font size=-2>16.09</TD><TD><center><font size=-2>17.76</TD><TD><center><font size=-2>50.23</TD></TR>
 <TR><TD><center><font size=-2>25/2</TD><TD><center><font size=-2> 6- 7</TD><TD><center><font size=-2>11.48</TD><TD><center><font size=-2>12.37</TD><TD><center><font size=-2>52.79</TD></TR>
 <TR><TD><center><font size=-2>25/2</TD><TD><center><font size=-2> 5- 6</TD><TD><center><font size=-2>10.66</TD><TD><center><font size=-2>11.34</TD><TD><center><font size=-2>55.04</TD></TR>
 <TR><TD><center><font size=-2>25/2</TD><TD><center><font size=-2> 4- 5</TD><TD><center><font size=-2>8.91</TD><TD><center><font size=-2>9.23</TD><TD><center><font size=-2>55.40</TD></TR>
 <TR><TD><center><font size=-2>25/2</TD><TD><center><font size=-2> 3- 4</TD><TD><center><font size=-2>7.35</TD><TD><center><font size=-2>7.48</TD><TD><center><font size=-2>60.66</TD></TR>
 <TR><TD><center><font size=-2>25/2</TD><TD><center><font size=-2> 2- 3</TD><TD><center><font size=-2>7.65</TD><TD><center><font size=-2>8.03</TD><TD><center><font size=-2>59.84</TD></TR>
 <TR><TD><center><font size=-2>25/2</TD><TD><center><font size=-2> 1- 2</TD><TD><center><font size=-2>7.54</TD><TD><center><font size=-2>7.64</TD><TD><center><font size=-2>60.05</TD></TR>
 <TR><TD><center><font size=-2>25/2</TD><TD><center><font size=-2> 0- 1</TD><TD><center><font size=-2>7.68</TD><TD><center><font size=-2>7.95</TD><TD><center><font size=-2>62.12</TD></TR>
 <TR><TD><strong><font size=-2>DATO - 2015</TD><TD><strong><font size=-2>&nbsp;Tid&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;NO<sub>2 </sub>&nbsp;&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;NO<sub>x </sub>&nbsp;&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;O<sub>3 </sub>&nbsp;&nbsp;&nbsp;</TD></TR>
 <TR><TD><center><font size=-2>24/2</TD><TD><center><font size=-2> 23-24</TD><TD><center><font size=-2>7.91</TD><TD><center><font size=-2>8.02</TD><TD><center><font size=-2>64.30</TD></TR>
 <TR><TD><center><font size=-2>24/2</TD><TD><center><font size=-2> 22-23</TD><TD><center><font size=-2>8.13</TD><TD><center><font size=-2>8.68</TD><TD><center><font size=-2>66.57</TD></TR>
 <TR><TD><center><font size=-2>24/2</TD><TD><center><font size=-2> 21-22</TD><TD><center><font size=-2>7.96</TD><TD><center><font size=-2>8.62</TD><TD><center><font size=-2>69.73</TD></TR>
 <TR><TD><center><font size=-2>24/2</TD><TD><center><font size=-2> 20-21</TD><TD><center><font size=-2>7.76</TD><TD><center><font size=-2>8.22</TD><TD><center><font size=-2>70.78</TD></TR>
 <TR><TD><center><font size=-2>24/2</TD><TD><center><font size=-2> 19-20</TD><TD><center><font size=-2>9.25</TD><TD><center><font size=-2>9.56</TD><TD><center><font size=-2>69.24</TD></TR>
 <TR><TD><center><font size=-2>24/2</TD><TD><center><font size=-2> 18-19</TD><TD><center><font size=-2>10.84</TD><TD><center><font size=-2>11.40</TD><TD><center><font size=-2>66.80</TD></TR>
 <TR><TD><center><font size=-2>24/2</TD><TD><center><font size=-2> 17-18</TD><TD><center><font size=-2>11.49</TD><TD><center><font size=-2>12.70</TD><TD><center><font size=-2>64.09</TD></TR>
 <TR><TD><center><font size=-2>24/2</TD><TD><center><font size=-2> 16-17</TD><TD><center><font size=-2>13.43</TD><TD><center><font size=-2>15.35</TD><TD><center><font size=-2>57.60</TD></TR>
 <TR><TD><center><font size=-2>24/2</TD><TD><center><font size=-2> 15-16</TD><TD><center><font size=-2>12.82</TD><TD><center><font size=-2>14.72</TD><TD><center><font size=-2>58.83</TD></TR>
 <TR><TD><center><font size=-2>24/2</TD><TD><center><font size=-2> 14-15</TD><TD><center><font size=-2>10.13</TD><TD><center><font size=-2>11.83</TD><TD><center><font size=-2>63.75</TD></TR>
 <TR><TD><center><font size=-2>24/2</TD><TD><center><font size=-2> 13-14</TD><TD><center><font size=-2>10.57</TD><TD><center><font size=-2>13.12</TD><TD><center><font size=-2>63.82</TD></TR>
 <TR><TD><center><font size=-2>24/2</TD><TD><center><font size=-2> 12-13</TD><TD><center><font size=-2>10.70</TD><TD><center><font size=-2>12.78</TD><TD><center><font size=-2>64.10</TD></TR>
 <TR><TD><center><font size=-2>24/2</TD><TD><center><font size=-2> 11-12</TD><TD><center><font size=-2>11.00</TD><TD><center><font size=-2>13.70</TD><TD><center><font size=-2>63.54</TD></TR>
 <TR><TD><center><font size=-2>24/2</TD><TD><center><font size=-2> 10-11</TD><TD><center><font size=-2>10.28</TD><TD><center><font size=-2>12.41</TD><TD><center><font size=-2>63.74</TD></TR>
 <TR><TD><center><font size=-2>24/2</TD><TD><center><font size=-2> 9-10</TD><TD><center><font size=-2>10.19</TD><TD><center><font size=-2>12.39</TD><TD><center><font size=-2>62.77</TD></TR>
 <TR><TD><center><font size=-2>24/2</TD><TD><center><font size=-2> 8- 9</TD><TD><center><font size=-2>12.55</TD><TD><center><font size=-2>14.70</TD><TD><center><font size=-2>59.44</TD></TR>
 <TR><TD><center><font size=-2>24/2</TD><TD><center><font size=-2> 7- 8</TD><TD><center><font size=-2>12.65</TD><TD><center><font size=-2>13.99</TD><TD><center><font size=-2>57.29</TD></TR>
 <TR><TD><center><font size=-2>24/2</TD><TD><center><font size=-2> 6- 7</TD><TD><center><font size=-2>10.70</TD><TD><center><font size=-2>11.70</TD><TD><center><font size=-2>51.88</TD></TR>
 <TR><TD><center><font size=-2>24/2</TD><TD><center><font size=-2> 5- 6</TD><TD><center><font size=-2>9.85</TD><TD><center><font size=-2>10.04</TD><TD><center><font size=-2>51.06</TD></TR>
 <TR><TD><center><font size=-2>24/2</TD><TD><center><font size=-2> 4- 5</TD><TD><center><font size=-2>8.48</TD><TD><center><font size=-2>8.91</TD><TD><center><font size=-2>53.28</TD></TR>
 <TR><TD><center><font size=-2>24/2</TD><TD><center><font size=-2> 3- 4</TD><TD><center><font size=-2>10.78</TD><TD><center><font size=-2>10.96</TD><TD><center><font size=-2>49.58</TD></TR>
 <TR><TD><center><font size=-2>24/2</TD><TD><center><font size=-2> 2- 3</TD><TD><center><font size=-2>17.43</TD><TD><center><font size=-2>17.47</TD><TD><center><font size=-2>43.86</TD></TR>
 <TR><TD><center><font size=-2>24/2</TD><TD><center><font size=-2> 1- 2</TD><TD><center><font size=-2>20.02</TD><TD><center><font size=-2>20.50</TD><TD><center><font size=-2>42.02</TD></TR>
 <TR><TD><center><font size=-2>24/2</TD><TD><center><font size=-2> 0- 1</TD><TD><center><font size=-2>17.08</TD><TD><center><font size=-2>17.32</TD><TD><center><font size=-2>37.73</TD></TR>
 <TR><TD><strong><font size=-2>DATO - 2015</TD><TD><strong><font size=-2>&nbsp;Tid&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;NO<sub>2 </sub>&nbsp;&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;NO<sub>x </sub>&nbsp;&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;O<sub>3 </sub>&nbsp;&nbsp;&nbsp;</TD></TR>
 <TR><TD><center><font size=-2>23/2</TD><TD><center><font size=-2> 23-24</TD><TD><center><font size=-2>25.45</TD><TD><center><font size=-2>26.62</TD><TD><center><font size=-2>29.32</TD></TR>
 <TR><TD><center><font size=-2>23/2</TD><TD><center><font size=-2> 22-23</TD><TD><center><font size=-2>16.91</TD><TD><center><font size=-2>17.63</TD><TD><center><font size=-2>40.68</TD></TR>
 <TR><TD><center><font size=-2>23/2</TD><TD><center><font size=-2> 21-22</TD><TD><center><font size=-2>15.04</TD><TD><center><font size=-2>16.15</TD><TD><center><font size=-2>45.04</TD></TR>
 <TR><TD><center><font size=-2>23/2</TD><TD><center><font size=-2> 20-21</TD><TD><center><font size=-2>14.40</TD><TD><center><font size=-2>15.17</TD><TD><center><font size=-2>48.76</TD></TR>
 <TR><TD><center><font size=-2>23/2</TD><TD><center><font size=-2> 19-20</TD><TD><center><font size=-2>13.50</TD><TD><center><font size=-2>14.26</TD><TD><center><font size=-2>56.97</TD></TR>
 <TR><TD><center><font size=-2>23/2</TD><TD><center><font size=-2> 18-19</TD><TD><center><font size=-2>14.56</TD><TD><center><font size=-2>15.00</TD><TD><center><font size=-2>61.59</TD></TR>
 <TR><TD><center><font size=-2>23/2</TD><TD><center><font size=-2> 17-18</TD><TD><center><font size=-2>13.51</TD><TD><center><font size=-2>14.02</TD><TD><center><font size=-2>71.11</TD></TR>
 <TR><TD><center><font size=-2>23/2</TD><TD><center><font size=-2> 16-17</TD><TD><center><font size=-2>10.41</TD><TD><center><font size=-2>11.89</TD><TD><center><font size=-2>76.76</TD></TR>
 <TR><TD><center><font size=-2>23/2</TD><TD><center><font size=-2> 15-16</TD><TD><center><font size=-2>7.53</TD><TD><center><font size=-2>8.94</TD><TD><center><font size=-2>77.43</TD></TR>
 <TR><TD><center><font size=-2>23/2</TD><TD><center><font size=-2> 14-15</TD><TD><center><font size=-2>10.98</TD><TD><center><font size=-2>13.69</TD><TD><center><font size=-2>65.14</TD></TR>
 <TR><TD><center><font size=-2>23/2</TD><TD><center><font size=-2> 13-14</TD><TD><center><font size=-2>16.48</TD><TD><center><font size=-2>19.69</TD><TD><center><font size=-2>53.99</TD></TR>
 <TR><TD><center><font size=-2>23/2</TD><TD><center><font size=-2> 12-13</TD><TD><center><font size=-2>13.55</TD><TD><center><font size=-2>15.85</TD><TD><center><font size=-2>55.16</TD></TR>
 <TR><TD><center><font size=-2>23/2</TD><TD><center><font size=-2> 11-12</TD><TD><center><font size=-2>12.79</TD><TD><center><font size=-2>15.28</TD><TD><center><font size=-2>55.58</TD></TR>
 <TR><TD><center><font size=-2>23/2</TD><TD><center><font size=-2> 10-11</TD><TD><center><font size=-2>15.02</TD><TD><center><font size=-2>18.04</TD><TD><center><font size=-2>52.69</TD></TR>
 <TR><TD><center><font size=-2>23/2</TD><TD><center><font size=-2> 9-10</TD><TD><center><font size=-2>17.31</TD><TD><center><font size=-2>21.08</TD><TD><center><font size=-2>47.64</TD></TR>
 <TR><TD><center><font size=-2>23/2</TD><TD><center><font size=-2> 8- 9</TD><TD><center><font size=-2>14.11</TD><TD><center><font size=-2>16.65</TD><TD><center><font size=-2>51.61</TD></TR>
 <TR><TD><center><font size=-2>23/2</TD><TD><center><font size=-2> 7- 8</TD><TD><center><font size=-2>11.15</TD><TD><center><font size=-2>12.21</TD><TD><center><font size=-2>56.62</TD></TR>
 <TR><TD><center><font size=-2>23/2</TD><TD><center><font size=-2> 6- 7</TD><TD><center><font size=-2>8.80</TD><TD><center><font size=-2>9.66</TD><TD><center><font size=-2>59.72</TD></TR>
 <TR><TD><center><font size=-2>23/2</TD><TD><center><font size=-2> 5- 6</TD><TD><center><font size=-2>7.41</TD><TD><center><font size=-2>7.85</TD><TD><center><font size=-2>64.65</TD></TR>
 <TR><TD><center><font size=-2>23/2</TD><TD><center><font size=-2> 4- 5</TD><TD><center><font size=-2>9.35</TD><TD><center><font size=-2>10.32</TD><TD><center><font size=-2>61.42</TD></TR>
 <TR><TD><center><font size=-2>23/2</TD><TD><center><font size=-2> 3- 4</TD><TD><center><font size=-2>7.43</TD><TD><center><font size=-2>7.86</TD><TD><center><font size=-2>60.92</TD></TR>
 <TR><TD><center><font size=-2>23/2</TD><TD><center><font size=-2> 2- 3</TD><TD><center><font size=-2>6.70</TD><TD><center><font size=-2>6.54</TD><TD><center><font size=-2>63.54</TD></TR>
 <TR><TD><center><font size=-2>23/2</TD><TD><center><font size=-2> 1- 2</TD><TD><center><font size=-2>9.55</TD><TD><center><font size=-2>9.69</TD><TD><center><font size=-2>59.99</TD></TR>
 <TR><TD><center><font size=-2>23/2</TD><TD><center><font size=-2> 0- 1</TD><TD><center><font size=-2>11.47</TD><TD><center><font size=-2>11.56</TD><TD><center><font size=-2>55.94</TD></TR>
 <TR><TD><strong><font size=-2>DATO - 2015</TD><TD><strong><font size=-2>&nbsp;Tid&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;NO<sub>2 </sub>&nbsp;&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;NO<sub>x </sub>&nbsp;&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;O<sub>3 </sub>&nbsp;&nbsp;&nbsp;</TD></TR>
 <TR><TD><center><font size=-2>22/2</TD><TD><center><font size=-2> 23-24</TD><TD><center><font size=-2>11.75</TD><TD><center><font size=-2>12.02</TD><TD><center><font size=-2>60.10</TD></TR>
 <TR><TD><center><font size=-2>22/2</TD><TD><center><font size=-2> 22-23</TD><TD><center><font size=-2>11.87</TD><TD><center><font size=-2>11.99</TD><TD><center><font size=-2>60.82</TD></TR>
 <TR><TD><center><font size=-2>22/2</TD><TD><center><font size=-2> 21-22</TD><TD><center><font size=-2>10.94</TD><TD><center><font size=-2>11.25</TD><TD><center><font size=-2>58.97</TD></TR>
 <TR><TD><center><font size=-2>22/2</TD><TD><center><font size=-2> 20-21</TD><TD><center><font size=-2>13.51</TD><TD><center><font size=-2>14.03</TD><TD><center><font size=-2>61.27</TD></TR>
 <TR><TD><center><font size=-2>22/2</TD><TD><center><font size=-2> 19-20</TD><TD><center><font size=-2>9.02</TD><TD><center><font size=-2>9.45</TD><TD><center><font size=-2>67.84</TD></TR>
 <TR><TD><center><font size=-2>22/2</TD><TD><center><font size=-2> 18-19</TD><TD><center><font size=-2>8.87</TD><TD><center><font size=-2>9.37</TD><TD><center><font size=-2>68.36</TD></TR>
 <TR><TD><center><font size=-2>22/2</TD><TD><center><font size=-2> 17-18</TD><TD><center><font size=-2>4.81</TD><TD><center><font size=-2>5.17</TD><TD><center><font size=-2>75.33</TD></TR>
 <TR><TD><center><font size=-2>22/2</TD><TD><center><font size=-2> 16-17</TD><TD><center><font size=-2>3.71</TD><TD><center><font size=-2>4.10</TD><TD><center><font size=-2>77.44</TD></TR>
 <TR><TD><center><font size=-2>22/2</TD><TD><center><font size=-2> 15-16</TD><TD><center><font size=-2>3.41</TD><TD><center><font size=-2>4.15</TD><TD><center><font size=-2>77.52</TD></TR>
 <TR><TD><center><font size=-2>22/2</TD><TD><center><font size=-2> 14-15</TD><TD><center><font size=-2>3.59</TD><TD><center><font size=-2>4.03</TD><TD><center><font size=-2>77.08</TD></TR>
 <TR><TD><center><font size=-2>22/2</TD><TD><center><font size=-2> 13-14</TD><TD><center><font size=-2>3.13</TD><TD><center><font size=-2>3.98</TD><TD><center><font size=-2>78.34</TD></TR>
 <TR><TD><center><font size=-2>22/2</TD><TD><center><font size=-2> 12-13</TD><TD><center><font size=-2>4.34</TD><TD><center><font size=-2>4.96</TD><TD><center><font size=-2>75.00</TD></TR>
 <TR><TD><center><font size=-2>22/2</TD><TD><center><font size=-2> 11-12</TD><TD><center><font size=-2>4.28</TD><TD><center><font size=-2>6.03</TD><TD><center><font size=-2>75.93</TD></TR>
 <TR><TD><center><font size=-2>22/2</TD><TD><center><font size=-2> 10-11</TD><TD><center><font size=-2>3.71</TD><TD><center><font size=-2>5.07</TD><TD><center><font size=-2>76.00</TD></TR>
 <TR><TD><center><font size=-2>22/2</TD><TD><center><font size=-2> 9-10</TD><TD><center><font size=-2>6.07</TD><TD><center><font size=-2>8.01</TD><TD><center><font size=-2>71.33</TD></TR>
 <TR><TD><center><font size=-2>22/2</TD><TD><center><font size=-2> 8- 9</TD><TD><center><font size=-2>8.39</TD><TD><center><font size=-2>10.29</TD><TD><center><font size=-2>66.19</TD></TR>
 <TR><TD><center><font size=-2>22/2</TD><TD><center><font size=-2> 7- 8</TD><TD><center><font size=-2>8.37</TD><TD><center><font size=-2>9.19</TD><TD><center><font size=-2>64.21</TD></TR>
 <TR><TD><center><font size=-2>22/2</TD><TD><center><font size=-2> 6- 7</TD><TD><center><font size=-2>9.78</TD><TD><center><font size=-2>11.81</TD><TD><center><font size=-2>64.57</TD></TR>
 <TR><TD><center><font size=-2>22/2</TD><TD><center><font size=-2> 5- 6</TD><TD><center><font size=-2>6.77</TD><TD><center><font size=-2>7.46</TD><TD><center><font size=-2>67.68</TD></TR>
 <TR><TD><center><font size=-2>22/2</TD><TD><center><font size=-2> 4- 5</TD><TD><center><font size=-2>6.30</TD><TD><center><font size=-2>6.94</TD><TD><center><font size=-2>66.45</TD></TR>
 <TR><TD><center><font size=-2>22/2</TD><TD><center><font size=-2> 3- 4</TD><TD><center><font size=-2>6.99</TD><TD><center><font size=-2>7.60</TD><TD><center><font size=-2>63.88</TD></TR>
 <TR><TD><center><font size=-2>22/2</TD><TD><center><font size=-2> 2- 3</TD><TD><center><font size=-2>10.61</TD><TD><center><font size=-2>11.45</TD><TD><center><font size=-2>60.62</TD></TR>
 <TR><TD><center><font size=-2>22/2</TD><TD><center><font size=-2> 1- 2</TD><TD><center><font size=-2>8.85</TD><TD><center><font size=-2>9.57</TD><TD><center><font size=-2>62.93</TD></TR>
 <TR><TD><center><font size=-2>22/2</TD><TD><center><font size=-2> 0- 1</TD><TD><center><font size=-2>6.75</TD><TD><center><font size=-2>7.43</TD><TD><center><font size=-2>66.99</TD></TR>
 <TR><TD><strong><font size=-2>DATO - 2015</TD><TD><strong><font size=-2>&nbsp;Tid&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;NO<sub>2 </sub>&nbsp;&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;NO<sub>x </sub>&nbsp;&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;O<sub>3 </sub>&nbsp;&nbsp;&nbsp;</TD></TR>
 <TR><TD><center><font size=-2>21/2</TD><TD><center><font size=-2> 23-24</TD><TD><center><font size=-2>5.70</TD><TD><center><font size=-2>6.34</TD><TD><center><font size=-2>70.04</TD></TR>
 <TR><TD><center><font size=-2>21/2</TD><TD><center><font size=-2> 22-23</TD><TD><center><font size=-2>5.37</TD><TD><center><font size=-2>5.99</TD><TD><center><font size=-2>72.30</TD></TR>
 <TR><TD><center><font size=-2>21/2</TD><TD><center><font size=-2> 21-22</TD><TD><center><font size=-2>5.06</TD><TD><center><font size=-2>5.47</TD><TD><center><font size=-2>75.11</TD></TR>
 <TR><TD><center><font size=-2>21/2</TD><TD><center><font size=-2> 20-21</TD><TD><center><font size=-2>5.67</TD><TD><center><font size=-2>6.30</TD><TD><center><font size=-2>72.45</TD></TR>
 <TR><TD><center><font size=-2>21/2</TD><TD><center><font size=-2> 19-20</TD><TD><center><font size=-2>7.91</TD><TD><center><font size=-2>8.31</TD><TD><center><font size=-2>61.19</TD></TR>
 <TR><TD><center><font size=-2>21/2</TD><TD><center><font size=-2> 18-19</TD><TD><center><font size=-2>11.05</TD><TD><center><font size=-2>11.66</TD><TD><center><font size=-2>62.73</TD></TR>
 <TR><TD><center><font size=-2>21/2</TD><TD><center><font size=-2> 17-18</TD><TD><center><font size=-2>14.41</TD><TD><center><font size=-2>15.13</TD><TD><center><font size=-2>68.65</TD></TR>
 <TR><TD><center><font size=-2>21/2</TD><TD><center><font size=-2> 16-17</TD><TD><center><font size=-2>15.20</TD><TD><center><font size=-2>17.30</TD><TD><center><font size=-2>55.88</TD></TR>
 <TR><TD><center><font size=-2>21/2</TD><TD><center><font size=-2> 15-16</TD><TD><center><font size=-2>15.03</TD><TD><center><font size=-2>17.47</TD><TD><center><font size=-2>43.29</TD></TR>
 <TR><TD><center><font size=-2>21/2</TD><TD><center><font size=-2> 14-15</TD><TD><center><font size=-2>20.39</TD><TD><center><font size=-2>24.82</TD><TD><center><font size=-2>56.02</TD></TR>
 <TR><TD><center><font size=-2>21/2</TD><TD><center><font size=-2> 13-14</TD><TD><center><font size=-2>23.64</TD><TD><center><font size=-2>32.59</TD><TD><center><font size=-2>29.83</TD></TR>
 <TR><TD><center><font size=-2>21/2</TD><TD><center><font size=-2> 12-13</TD><TD><center><font size=-2>22.69</TD><TD><center><font size=-2>32.53</TD><TD><center><font size=-2>22.84</TD></TR>
 <TR><TD><center><font size=-2>21/2</TD><TD><center><font size=-2> 11-12</TD><TD><center><font size=-2>17.35</TD><TD><center><font size=-2>23.38</TD><TD><center><font size=-2>27.60</TD></TR>
 <TR><TD><center><font size=-2>21/2</TD><TD><center><font size=-2> 10-11</TD><TD><center><font size=-2>15.97</TD><TD><center><font size=-2>20.98</TD><TD><center><font size=-2>29.90</TD></TR>
 <TR><TD><center><font size=-2>21/2</TD><TD><center><font size=-2> 9-10</TD><TD><center><font size=-2>16.95</TD><TD><center><font size=-2>21.42</TD><TD><center><font size=-2>26.60</TD></TR>
 <TR><TD><center><font size=-2>21/2</TD><TD><center><font size=-2> 8- 9</TD><TD><center><font size=-2>18.72</TD><TD><center><font size=-2>24.20</TD><TD><center><font size=-2>22.49</TD></TR>
 <TR><TD><center><font size=-2>21/2</TD><TD><center><font size=-2> 7- 8</TD><TD><center><font size=-2>17.00</TD><TD><center><font size=-2>20.27</TD><TD><center><font size=-2>24.06</TD></TR>
 <TR><TD><center><font size=-2>21/2</TD><TD><center><font size=-2> 6- 7</TD><TD><center><font size=-2>19.80</TD><TD><center><font size=-2>22.51</TD><TD><center><font size=-2>24.16</TD></TR>
 <TR><TD><center><font size=-2>21/2</TD><TD><center><font size=-2> 5- 6</TD><TD><center><font size=-2>19.15</TD><TD><center><font size=-2>21.33</TD><TD><center><font size=-2>27.29</TD></TR>
 <TR><TD><center><font size=-2>21/2</TD><TD><center><font size=-2> 4- 5</TD><TD><center><font size=-2>12.35</TD><TD><center><font size=-2>13.65</TD><TD><center><font size=-2>34.16</TD></TR>
 <TR><TD><center><font size=-2>21/2</TD><TD><center><font size=-2> 3- 4</TD><TD><center><font size=-2>12.30</TD><TD><center><font size=-2>13.25</TD><TD><center><font size=-2>32.11</TD></TR>
 <TR><TD><center><font size=-2>21/2</TD><TD><center><font size=-2> 2- 3</TD><TD><center><font size=-2>14.13</TD><TD><center><font size=-2>15.53</TD><TD><center><font size=-2>28.64</TD></TR>
 <TR><TD><center><font size=-2>21/2</TD><TD><center><font size=-2> 1- 2</TD><TD><center><font size=-2>16.03</TD><TD><center><font size=-2>18.20</TD><TD><center><font size=-2>29.72</TD></TR>
 <TR><TD><center><font size=-2>21/2</TD><TD><center><font size=-2> 0- 1</TD><TD><center><font size=-2>12.87</TD><TD><center><font size=-2>14.21</TD><TD><center><font size=-2>35.33</TD></TR>
 <TR><TD><strong><font size=-2>DATO - 2015</TD><TD><strong><font size=-2>&nbsp;Tid&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;NO<sub>2 </sub>&nbsp;&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;NO<sub>x </sub>&nbsp;&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;O<sub>3 </sub>&nbsp;&nbsp;&nbsp;</TD></TR>
 <TR><TD><center><font size=-2>20/2</TD><TD><center><font size=-2> 23-24</TD><TD><center><font size=-2>16.12</TD><TD><center><font size=-2>17.47</TD><TD><center><font size=-2>35.70</TD></TR>
 <TR><TD><center><font size=-2>20/2</TD><TD><center><font size=-2> 22-23</TD><TD><center><font size=-2>19.75</TD><TD><center><font size=-2>21.21</TD><TD><center><font size=-2>37.91</TD></TR>
 <TR><TD><center><font size=-2>20/2</TD><TD><center><font size=-2> 21-22</TD><TD><center><font size=-2>11.74</TD><TD><center><font size=-2>12.68</TD><TD><center><font size=-2>50.80</TD></TR>
 <TR><TD><center><font size=-2>20/2</TD><TD><center><font size=-2> 20-21</TD><TD><center><font size=-2>15.90</TD><TD><center><font size=-2>16.88</TD><TD><center><font size=-2>50.30</TD></TR>
 <TR><TD><center><font size=-2>20/2</TD><TD><center><font size=-2> 19-20</TD><TD><center><font size=-2>13.15</TD><TD><center><font size=-2>13.86</TD><TD><center><font size=-2>57.20</TD></TR>
 <TR><TD><center><font size=-2>20/2</TD><TD><center><font size=-2> 18-19</TD><TD><center><font size=-2>11.00</TD><TD><center><font size=-2>11.72</TD><TD><center><font size=-2>63.70</TD></TR>
 <TR><TD><center><font size=-2>20/2</TD><TD><center><font size=-2> 17-18</TD><TD><center><font size=-2>7.83</TD><TD><center><font size=-2>8.26</TD><TD><center><font size=-2>67.22</TD></TR>
 <TR><TD><center><font size=-2>20/2</TD><TD><center><font size=-2> 16-17</TD><TD><center><font size=-2>11.66</TD><TD><center><font size=-2>12.92</TD><TD><center><font size=-2>57.88</TD></TR>
 <TR><TD><center><font size=-2>20/2</TD><TD><center><font size=-2> 15-16</TD><TD><center><font size=-2>19.31</TD><TD><center><font size=-2>21.46</TD><TD><center><font size=-2>39.95</TD></TR>
 <TR><TD><center><font size=-2>20/2</TD><TD><center><font size=-2> 14-15</TD><TD><center><font size=-2>18.00</TD><TD><center><font size=-2>21.62</TD><TD><center><font size=-2>37.41</TD></TR>
 <TR><TD><center><font size=-2>20/2</TD><TD><center><font size=-2> 13-14</TD><TD><center><font size=-2>18.43</TD><TD><center><font size=-2>22.81</TD><TD><center><font size=-2>34.98</TD></TR>
 <TR><TD><center><font size=-2>20/2</TD><TD><center><font size=-2> 12-13</TD><TD><center><font size=-2>19.82</TD><TD><center><font size=-2>25.45</TD><TD><center><font size=-2>30.71</TD></TR>
 <TR><TD><center><font size=-2>20/2</TD><TD><center><font size=-2> 11-12</TD><TD><center><font size=-2>20.35</TD><TD><center><font size=-2>26.71</TD><TD><center><font size=-2>27.70</TD></TR>
 <TR><TD><center><font size=-2>20/2</TD><TD><center><font size=-2> 10-11</TD><TD><center><font size=-2>21.35</TD><TD><center><font size=-2>27.94</TD><TD><center><font size=-2>25.00</TD></TR>
 <TR><TD><center><font size=-2>20/2</TD><TD><center><font size=-2> 9-10</TD><TD><center><font size=-2>23.19</TD><TD><center><font size=-2>27.90</TD><TD><center><font size=-2>22.59</TD></TR>
 <TR><TD><center><font size=-2>20/2</TD><TD><center><font size=-2> 8- 9</TD><TD><center><font size=-2>25.77</TD><TD><center><font size=-2>30.52</TD><TD><center><font size=-2>20.48</TD></TR>
 <TR><TD><center><font size=-2>20/2</TD><TD><center><font size=-2> 7- 8</TD><TD><center><font size=-2>24.12</TD><TD><center><font size=-2>27.09</TD><TD><center><font size=-2>23.51</TD></TR>
 <TR><TD><center><font size=-2>20/2</TD><TD><center><font size=-2> 6- 7</TD><TD><center><font size=-2>20.76</TD><TD><center><font size=-2>22.22</TD><TD><center><font size=-2>26.72</TD></TR>
 <TR><TD><center><font size=-2>20/2</TD><TD><center><font size=-2> 5- 6</TD><TD><center><font size=-2>15.40</TD><TD><center><font size=-2>15.55</TD><TD><center><font size=-2>35.32</TD></TR>
 <TR><TD><center><font size=-2>20/2</TD><TD><center><font size=-2> 4- 5</TD><TD><center><font size=-2>13.94</TD><TD><center><font size=-2>14.27</TD><TD><center><font size=-2>36.81</TD></TR>
 <TR><TD><center><font size=-2>20/2</TD><TD><center><font size=-2> 3- 4</TD><TD><center><font size=-2>13.04</TD><TD><center><font size=-2>13.14</TD><TD><center><font size=-2>37.22</TD></TR>
 <TR><TD><center><font size=-2>20/2</TD><TD><center><font size=-2> 2- 3</TD><TD><center><font size=-2>11.66</TD><TD><center><font size=-2>11.88</TD><TD><center><font size=-2>41.69</TD></TR>
 <TR><TD><center><font size=-2>20/2</TD><TD><center><font size=-2> 1- 2</TD><TD><center><font size=-2>13.92</TD><TD><center><font size=-2>14.21</TD><TD><center><font size=-2>38.65</TD></TR>
 <TR><TD><center><font size=-2>20/2</TD><TD><center><font size=-2> 0- 1</TD><TD><center><font size=-2>17.46</TD><TD><center><font size=-2>17.84</TD><TD><center><font size=-2>34.33</TD></TR>
 <TR><TD><strong><font size=-2>DATO - 2015</TD><TD><strong><font size=-2>&nbsp;Tid&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;NO<sub>2 </sub>&nbsp;&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;NO<sub>x </sub>&nbsp;&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;O<sub>3 </sub>&nbsp;&nbsp;&nbsp;</TD></TR>
 <TR><TD><center><font size=-2>19/2</TD><TD><center><font size=-2> 23-24</TD><TD><center><font size=-2>19.27</TD><TD><center><font size=-2>19.78</TD><TD><center><font size=-2>33.02</TD></TR>
 <TR><TD><center><font size=-2>19/2</TD><TD><center><font size=-2> 22-23</TD><TD><center><font size=-2>21.30</TD><TD><center><font size=-2>21.99</TD><TD><center><font size=-2>31.10</TD></TR>
 <TR><TD><center><font size=-2>19/2</TD><TD><center><font size=-2> 21-22</TD><TD><center><font size=-2>20.88</TD><TD><center><font size=-2>21.93</TD><TD><center><font size=-2>33.60</TD></TR>
 <TR><TD><center><font size=-2>19/2</TD><TD><center><font size=-2> 20-21</TD><TD><center><font size=-2>23.83</TD><TD><center><font size=-2>25.27</TD><TD><center><font size=-2>32.73</TD></TR>
 <TR><TD><center><font size=-2>19/2</TD><TD><center><font size=-2> 19-20</TD><TD><center><font size=-2>24.87</TD><TD><center><font size=-2>26.14</TD><TD><center><font size=-2>34.88</TD></TR>
 <TR><TD><center><font size=-2>19/2</TD><TD><center><font size=-2> 18-19</TD><TD><center><font size=-2>21.83</TD><TD><center><font size=-2>22.72</TD><TD><center><font size=-2>43.06</TD></TR>
 <TR><TD><center><font size=-2>19/2</TD><TD><center><font size=-2> 17-18</TD><TD><center><font size=-2>23.62</TD><TD><center><font size=-2>24.63</TD><TD><center><font size=-2>41.15</TD></TR>
 <TR><TD><center><font size=-2>19/2</TD><TD><center><font size=-2> 16-17</TD><TD><center><font size=-2>21.07</TD><TD><center><font size=-2>22.71</TD><TD><center><font size=-2>44.34</TD></TR>
 <TR><TD><center><font size=-2>19/2</TD><TD><center><font size=-2> 15-16</TD><TD><center><font size=-2>19.81</TD><TD><center><font size=-2>21.80</TD><TD><center><font size=-2>47.61</TD></TR>
 <TR><TD><center><font size=-2>19/2</TD><TD><center><font size=-2> 14-15</TD><TD><center><font size=-2>22.38</TD><TD><center><font size=-2>26.20</TD><TD><center><font size=-2>43.84</TD></TR>
 <TR><TD><center><font size=-2>19/2</TD><TD><center><font size=-2> 13-14</TD><TD><center><font size=-2>22.73</TD><TD><center><font size=-2>28.31</TD><TD><center><font size=-2>40.76</TD></TR>
 <TR><TD><center><font size=-2>19/2</TD><TD><center><font size=-2> 12-13</TD><TD><center><font size=-2>22.20</TD><TD><center><font size=-2>26.01</TD><TD><center><font size=-2>40.27</TD></TR>
 <TR><TD><center><font size=-2>19/2</TD><TD><center><font size=-2> 11-12</TD><TD><center><font size=-2>18.45</TD><TD><center><font size=-2>21.71</TD><TD><center><font size=-2>46.98</TD></TR>
 <TR><TD><center><font size=-2>19/2</TD><TD><center><font size=-2> 10-11</TD><TD><center><font size=-2>18.55</TD><TD><center><font size=-2>21.58</TD><TD><center><font size=-2>44.67</TD></TR>
 <TR><TD><center><font size=-2>19/2</TD><TD><center><font size=-2> 9-10</TD><TD><center><font size=-2>20.43</TD><TD><center><font size=-2>23.25</TD><TD><center><font size=-2>38.70</TD></TR>
 <TR><TD><center><font size=-2>19/2</TD><TD><center><font size=-2> 8- 9</TD><TD><center><font size=-2>26.10</TD><TD><center><font size=-2>29.46</TD><TD><center><font size=-2>29.22</TD></TR>
 <TR><TD><center><font size=-2>19/2</TD><TD><center><font size=-2> 7- 8</TD><TD><center><font size=-2>30.02</TD><TD><center><font size=-2>32.29</TD><TD><center><font size=-2>25.44</TD></TR>
 <TR><TD><center><font size=-2>19/2</TD><TD><center><font size=-2> 6- 7</TD><TD><center><font size=-2>34.08</TD><TD><center><font size=-2>35.67</TD><TD><center><font size=-2>20.07</TD></TR>
 <TR><TD><center><font size=-2>19/2</TD><TD><center><font size=-2> 5- 6</TD><TD><center><font size=-2>38.78</TD><TD><center><font size=-2>39.84</TD><TD><center><font size=-2>16.52</TD></TR>
 <TR><TD><center><font size=-2>19/2</TD><TD><center><font size=-2> 4- 5</TD><TD><center><font size=-2>35.39</TD><TD><center><font size=-2>35.72</TD><TD><center><font size=-2>19.13</TD></TR>
 <TR><TD><center><font size=-2>19/2</TD><TD><center><font size=-2> 3- 4</TD><TD><center><font size=-2>25.05</TD><TD><center><font size=-2>25.42</TD><TD><center><font size=-2>28.79</TD></TR>
 <TR><TD><center><font size=-2>19/2</TD><TD><center><font size=-2> 2- 3</TD><TD><center><font size=-2>14.21</TD><TD><center><font size=-2>14.38</TD><TD><center><font size=-2>44.30</TD></TR>
 <TR><TD><center><font size=-2>19/2</TD><TD><center><font size=-2> 1- 2</TD><TD><center><font size=-2>13.22</TD><TD><center><font size=-2>13.24</TD><TD><center><font size=-2>49.06</TD></TR>
 <TR><TD><center><font size=-2>19/2</TD><TD><center><font size=-2> 0- 1</TD><TD><center><font size=-2>12.85</TD><TD><center><font size=-2>12.75</TD><TD><center><font size=-2>50.59</TD></TR>
 <TR><TD><strong><font size=-2>DATO - 2015</TD><TD><strong><font size=-2>&nbsp;Tid&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;NO<sub>2 </sub>&nbsp;&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;NO<sub>x </sub>&nbsp;&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;O<sub>3 </sub>&nbsp;&nbsp;&nbsp;</TD></TR>
 <TR><TD><center><font size=-2>18/2</TD><TD><center><font size=-2> 23-24</TD><TD><center><font size=-2>15.53</TD><TD><center><font size=-2>15.94</TD><TD><center><font size=-2>48.95</TD></TR>
 <TR><TD><center><font size=-2>18/2</TD><TD><center><font size=-2> 22-23</TD><TD><center><font size=-2>17.88</TD><TD><center><font size=-2>17.96</TD><TD><center><font size=-2>48.79</TD></TR>
 <TR><TD><center><font size=-2>18/2</TD><TD><center><font size=-2> 21-22</TD><TD><center><font size=-2>19.47</TD><TD><center><font size=-2>19.60</TD><TD><center><font size=-2>47.80</TD></TR>
 <TR><TD><center><font size=-2>18/2</TD><TD><center><font size=-2> 20-21</TD><TD><center><font size=-2>21.04</TD><TD><center><font size=-2>21.37</TD><TD><center><font size=-2>47.62</TD></TR>
 <TR><TD><center><font size=-2>18/2</TD><TD><center><font size=-2> 19-20</TD><TD><center><font size=-2>20.17</TD><TD><center><font size=-2>20.36</TD><TD><center><font size=-2>50.35</TD></TR>
 <TR><TD><center><font size=-2>18/2</TD><TD><center><font size=-2> 18-19</TD><TD><center><font size=-2>22.00</TD><TD><center><font size=-2>22.34</TD><TD><center><font size=-2>49.12</TD></TR>
 <TR><TD><center><font size=-2>18/2</TD><TD><center><font size=-2> 17-18</TD><TD><center><font size=-2>23.86</TD><TD><center><font size=-2>24.15</TD><TD><center><font size=-2>46.15</TD></TR>
 <TR><TD><center><font size=-2>18/2</TD><TD><center><font size=-2> 16-17</TD><TD><center><font size=-2>18.20</TD><TD><center><font size=-2>19.04</TD><TD><center><font size=-2>52.86</TD></TR>
 <TR><TD><center><font size=-2>18/2</TD><TD><center><font size=-2> 15-16</TD><TD><center><font size=-2>15.16</TD><TD><center><font size=-2>16.76</TD><TD><center><font size=-2>56.98</TD></TR>
 <TR><TD><center><font size=-2>18/2</TD><TD><center><font size=-2> 14-15</TD><TD><center><font size=-2>13.08</TD><TD><center><font size=-2>15.38</TD><TD><center><font size=-2>57.32</TD></TR>
 <TR><TD><center><font size=-2>18/2</TD><TD><center><font size=-2> 13-14</TD><TD><center><font size=-2>12.12</TD><TD><center><font size=-2>16.67</TD><TD><center><font size=-2>56.78</TD></TR>
 <TR><TD><center><font size=-2>18/2</TD><TD><center><font size=-2> 12-13</TD><TD><center><font size=-2>11.05</TD><TD><center><font size=-2>15.70</TD><TD><center><font size=-2>55.77</TD></TR>
 <TR><TD><center><font size=-2>18/2</TD><TD><center><font size=-2> 11-12</TD><TD><center><font size=-2>11.58</TD><TD><center><font size=-2>17.03</TD><TD><center><font size=-2>51.25</TD></TR>
 <TR><TD><center><font size=-2>18/2</TD><TD><center><font size=-2> 10-11</TD><TD><center><font size=-2>12.38</TD><TD><center><font size=-2>17.00</TD><TD><center><font size=-2>48.60</TD></TR>
 <TR><TD><center><font size=-2>18/2</TD><TD><center><font size=-2> 9-10</TD><TD><center><font size=-2>15.29</TD><TD><center><font size=-2>20.13</TD><TD><center><font size=-2>41.55</TD></TR>
 <TR><TD><center><font size=-2>18/2</TD><TD><center><font size=-2> 8- 9</TD><TD><center><font size=-2>17.48</TD><TD><center><font size=-2>20.49</TD><TD><center><font size=-2>41.59</TD></TR>
 <TR><TD><center><font size=-2>18/2</TD><TD><center><font size=-2> 7- 8</TD><TD><center><font size=-2>15.49</TD><TD><center><font size=-2>16.68</TD><TD><center><font size=-2>46.07</TD></TR>
 <TR><TD><center><font size=-2>18/2</TD><TD><center><font size=-2> 6- 7</TD><TD><center><font size=-2>7.90</TD><TD><center><font size=-2>8.32</TD><TD><center><font size=-2>57.57</TD></TR>
 <TR><TD><center><font size=-2>18/2</TD><TD><center><font size=-2> 5- 6</TD><TD><center><font size=-2>4.04</TD><TD><center><font size=-2>3.94</TD><TD><center><font size=-2>63.02</TD></TR>
 <TR><TD><center><font size=-2>18/2</TD><TD><center><font size=-2> 4- 5</TD><TD><center><font size=-2>2.93</TD><TD><center><font size=-2>3.14</TD><TD><center><font size=-2>64.52</TD></TR>
 <TR><TD><center><font size=-2>18/2</TD><TD><center><font size=-2> 3- 4</TD><TD><center><font size=-2>2.85</TD><TD><center><font size=-2>2.68</TD><TD><center><font size=-2>66.39</TD></TR>
 <TR><TD><center><font size=-2>18/2</TD><TD><center><font size=-2> 2- 3</TD><TD><center><font size=-2>3.28</TD><TD><center><font size=-2>3.29</TD><TD><center><font size=-2>67.46</TD></TR>
 <TR><TD><center><font size=-2>18/2</TD><TD><center><font size=-2> 1- 2</TD><TD><center><font size=-2>3.30</TD><TD><center><font size=-2>2.94</TD><TD><center><font size=-2>68.48</TD></TR>
 <TR><TD><center><font size=-2>18/2</TD><TD><center><font size=-2> 0- 1</TD><TD><center><font size=-2>3.57</TD><TD><center><font size=-2>3.46</TD><TD><center><font size=-2>68.79</TD></TR>
 <TR><TD><strong><font size=-2>DATO - 2015</TD><TD><strong><font size=-2>&nbsp;Tid&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;NO<sub>2 </sub>&nbsp;&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;NO<sub>x </sub>&nbsp;&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;O<sub>3 </sub>&nbsp;&nbsp;&nbsp;</TD></TR>
 <TR><TD><center><font size=-2>17/2</TD><TD><center><font size=-2> 23-24</TD><TD><center><font size=-2>5.25</TD><TD><center><font size=-2>5.19</TD><TD><center><font size=-2>66.08</TD></TR>
 <TR><TD><center><font size=-2>17/2</TD><TD><center><font size=-2> 22-23</TD><TD><center><font size=-2>7.46</TD><TD><center><font size=-2>7.82</TD><TD><center><font size=-2>64.14</TD></TR>
 <TR><TD><center><font size=-2>17/2</TD><TD><center><font size=-2> 21-22</TD><TD><center><font size=-2>17.49</TD><TD><center><font size=-2>18.07</TD><TD><center><font size=-2>43.55</TD></TR>
 <TR><TD><center><font size=-2>17/2</TD><TD><center><font size=-2> 20-21</TD><TD><center><font size=-2>29.13</TD><TD><center><font size=-2>30.91</TD><TD><center><font size=-2>22.51</TD></TR>
 <TR><TD><center><font size=-2>17/2</TD><TD><center><font size=-2> 19-20</TD><TD><center><font size=-2>32.92</TD><TD><center><font size=-2>34.66</TD><TD><center><font size=-2>17.19</TD></TR>
 <TR><TD><center><font size=-2>17/2</TD><TD><center><font size=-2> 18-19</TD><TD><center><font size=-2>36.39</TD><TD><center><font size=-2>40.65</TD><TD><center><font size=-2>9.10</TD></TR>
 <TR><TD><center><font size=-2>17/2</TD><TD><center><font size=-2> 17-18</TD><TD><center><font size=-2>34.40</TD><TD><center><font size=-2>42.94</TD><TD><center><font size=-2>5.55</TD></TR>
 <TR><TD><center><font size=-2>17/2</TD><TD><center><font size=-2> 16-17</TD><TD><center><font size=-2>33.44</TD><TD><center><font size=-2>46.35</TD><TD><center><font size=-2>8.39</TD></TR>
 <TR><TD><center><font size=-2>17/2</TD><TD><center><font size=-2> 15-16</TD><TD><center><font size=-2>28.75</TD><TD><center><font size=-2>36.28</TD><TD><center><font size=-2>14.07</TD></TR>
 <TR><TD><center><font size=-2>17/2</TD><TD><center><font size=-2> 14-15</TD><TD><center><font size=-2>25.57</TD><TD><center><font size=-2>34.12</TD><TD><center><font size=-2>20.25</TD></TR>
 <TR><TD><center><font size=-2>17/2</TD><TD><center><font size=-2> 13-14</TD><TD><center><font size=-2>20.76</TD><TD><center><font size=-2>31.59</TD><TD><center><font size=-2>24.36</TD></TR>
 <TR><TD><center><font size=-2>17/2</TD><TD><center><font size=-2> 12-13</TD><TD><center><font size=-2>17.58</TD><TD><center><font size=-2>24.04</TD><TD><center><font size=-2>25.15</TD></TR>
 <TR><TD><center><font size=-2>17/2</TD><TD><center><font size=-2> 11-12</TD><TD><center><font size=-2>16.61</TD><TD><center><font size=-2>21.48</TD><TD><center><font size=-2>28.34</TD></TR>
 <TR><TD><center><font size=-2>17/2</TD><TD><center><font size=-2> 10-11</TD><TD><center><font size=-2>16.25</TD><TD><center><font size=-2>21.65</TD><TD><center><font size=-2>29.18</TD></TR>
 <TR><TD><center><font size=-2>17/2</TD><TD><center><font size=-2> 9-10</TD><TD><center><font size=-2>18.06</TD><TD><center><font size=-2>22.73</TD><TD><center><font size=-2>27.73</TD></TR>
 <TR><TD><center><font size=-2>17/2</TD><TD><center><font size=-2> 8- 9</TD><TD><center><font size=-2>21.87</TD><TD><center><font size=-2>25.86</TD><TD><center><font size=-2>26.26</TD></TR>
 <TR><TD><center><font size=-2>17/2</TD><TD><center><font size=-2> 7- 8</TD><TD><center><font size=-2>18.66</TD><TD><center><font size=-2>20.12</TD><TD><center><font size=-2>30.29</TD></TR>
 <TR><TD><center><font size=-2>17/2</TD><TD><center><font size=-2> 6- 7</TD><TD><center><font size=-2>15.64</TD><TD><center><font size=-2>17.54</TD><TD><center><font size=-2>34.28</TD></TR>
 <TR><TD><center><font size=-2>17/2</TD><TD><center><font size=-2> 5- 6</TD><TD><center><font size=-2>8.70</TD><TD><center><font size=-2>9.16</TD><TD><center><font size=-2>42.15</TD></TR>
 <TR><TD><center><font size=-2>17/2</TD><TD><center><font size=-2> 4- 5</TD><TD><center><font size=-2>7.67</TD><TD><center><font size=-2>8.10</TD><TD><center><font size=-2>44.21</TD></TR>
 <TR><TD><center><font size=-2>17/2</TD><TD><center><font size=-2> 3- 4</TD><TD><center><font size=-2>7.57</TD><TD><center><font size=-2>8.18</TD><TD><center><font size=-2>45.12</TD></TR>
 <TR><TD><center><font size=-2>17/2</TD><TD><center><font size=-2> 2- 3</TD><TD><center><font size=-2>7.37</TD><TD><center><font size=-2>7.99</TD><TD><center><font size=-2>47.06</TD></TR>
 <TR><TD><center><font size=-2>17/2</TD><TD><center><font size=-2> 1- 2</TD><TD><center><font size=-2>7.43</TD><TD><center><font size=-2>8.16</TD><TD><center><font size=-2>47.89</TD></TR>
 <TR><TD><center><font size=-2>17/2</TD><TD><center><font size=-2> 0- 1</TD><TD><center><font size=-2>6.99</TD><TD><center><font size=-2>7.23</TD><TD><center><font size=-2>50.09</TD></TR>
 <TR><TD><strong><font size=-2>DATO - 2015</TD><TD><strong><font size=-2>&nbsp;Tid&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;NO<sub>2 </sub>&nbsp;&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;NO<sub>x </sub>&nbsp;&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;O<sub>3 </sub>&nbsp;&nbsp;&nbsp;</TD></TR>
 <TR><TD><center><font size=-2>16/2</TD><TD><center><font size=-2> 23-24</TD><TD><center><font size=-2>7.01</TD><TD><center><font size=-2>7.44</TD><TD><center><font size=-2>51.02</TD></TR>
 <TR><TD><center><font size=-2>16/2</TD><TD><center><font size=-2> 22-23</TD><TD><center><font size=-2>7.98</TD><TD><center><font size=-2>8.61</TD><TD><center><font size=-2>50.64</TD></TR>
 <TR><TD><center><font size=-2>16/2</TD><TD><center><font size=-2> 21-22</TD><TD><center><font size=-2>7.70</TD><TD><center><font size=-2>8.46</TD><TD><center><font size=-2>53.24</TD></TR>
 <TR><TD><center><font size=-2>16/2</TD><TD><center><font size=-2> 20-21</TD><TD><center><font size=-2>9.24</TD><TD><center><font size=-2>9.87</TD><TD><center><font size=-2>51.74</TD></TR>
 <TR><TD><center><font size=-2>16/2</TD><TD><center><font size=-2> 19-20</TD><TD><center><font size=-2>10.78</TD><TD><center><font size=-2>11.36</TD><TD><center><font size=-2>52.21</TD></TR>
 <TR><TD><center><font size=-2>16/2</TD><TD><center><font size=-2> 18-19</TD><TD><center><font size=-2>12.15</TD><TD><center><font size=-2>13.05</TD><TD><center><font size=-2>54.88</TD></TR>
 <TR><TD><center><font size=-2>16/2</TD><TD><center><font size=-2> 17-18</TD><TD><center><font size=-2>12.62</TD><TD><center><font size=-2>13.56</TD><TD><center><font size=-2>55.57</TD></TR>
 <TR><TD><center><font size=-2>16/2</TD><TD><center><font size=-2> 16-17</TD><TD><center><font size=-2>13.99</TD><TD><center><font size=-2>15.09</TD><TD><center><font size=-2>55.72</TD></TR>
 <TR><TD><center><font size=-2>16/2</TD><TD><center><font size=-2> 15-16</TD><TD><center><font size=-2>13.35</TD><TD><center><font size=-2>14.39</TD><TD><center><font size=-2>55.03</TD></TR>
 <TR><TD><center><font size=-2>16/2</TD><TD><center><font size=-2> 14-15</TD><TD><center><font size=-2>11.76</TD><TD><center><font size=-2>13.82</TD><TD><center><font size=-2>55.30</TD></TR>
 <TR><TD><center><font size=-2>16/2</TD><TD><center><font size=-2> 13-14</TD><TD><center><font size=-2>9.77</TD><TD><center><font size=-2>11.43</TD><TD><center><font size=-2>56.85</TD></TR>
 <TR><TD><center><font size=-2>16/2</TD><TD><center><font size=-2> 12-13</TD><TD><center><font size=-2>9.73</TD><TD><center><font size=-2>11.47</TD><TD><center><font size=-2>57.03</TD></TR>
 <TR><TD><center><font size=-2>16/2</TD><TD><center><font size=-2> 11-12</TD><TD><center><font size=-2>8.39</TD><TD><center><font size=-2>9.98</TD><TD><center><font size=-2>59.78</TD></TR>
 <TR><TD><center><font size=-2>16/2</TD><TD><center><font size=-2> 10-11</TD><TD><center><font size=-2>9.98</TD><TD><center><font size=-2>11.61</TD><TD><center><font size=-2>60.84</TD></TR>
 <TR><TD><center><font size=-2>16/2</TD><TD><center><font size=-2> 9-10</TD><TD><center><font size=-2>9.45</TD><TD><center><font size=-2>11.66</TD><TD><center><font size=-2>61.40</TD></TR>
 <TR><TD><center><font size=-2>16/2</TD><TD><center><font size=-2> 8- 9</TD><TD><center><font size=-2>10.34</TD><TD><center><font size=-2>12.91</TD><TD><center><font size=-2>62.29</TD></TR>
 <TR><TD><center><font size=-2>16/2</TD><TD><center><font size=-2> 7- 8</TD><TD><center><font size=-2>11.41</TD><TD><center><font size=-2>14.15</TD><TD><center><font size=-2>60.21</TD></TR>
 <TR><TD><center><font size=-2>16/2</TD><TD><center><font size=-2> 6- 7</TD><TD><center><font size=-2>9.38</TD><TD><center><font size=-2>11.70</TD><TD><center><font size=-2>59.70</TD></TR>
 <TR><TD><center><font size=-2>16/2</TD><TD><center><font size=-2> 5- 6</TD><TD><center><font size=-2>6.90</TD><TD><center><font size=-2>8.05</TD><TD><center><font size=-2>63.92</TD></TR>
 <TR><TD><center><font size=-2>16/2</TD><TD><center><font size=-2> 4- 5</TD><TD><center><font size=-2>4.26</TD><TD><center><font size=-2>4.78</TD><TD><center><font size=-2>70.20</TD></TR>
 <TR><TD><center><font size=-2>16/2</TD><TD><center><font size=-2> 3- 4</TD><TD><center><font size=-2>4.49</TD><TD><center><font size=-2>5.08</TD><TD><center><font size=-2>73.94</TD></TR>
 <TR><TD><center><font size=-2>16/2</TD><TD><center><font size=-2> 2- 3</TD><TD><center><font size=-2>3.95</TD><TD><center><font size=-2>4.41</TD><TD><center><font size=-2>79.06</TD></TR>
 <TR><TD><center><font size=-2>16/2</TD><TD><center><font size=-2> 1- 2</TD><TD><center><font size=-2>4.18</TD><TD><center><font size=-2>4.75</TD><TD><center><font size=-2>76.84</TD></TR>
 <TR><TD><center><font size=-2>16/2</TD><TD><center><font size=-2> 0- 1</TD><TD><center><font size=-2>4.05</TD><TD><center><font size=-2>4.27</TD><TD><center><font size=-2>76.94</TD></TR>
 <TR><TD><strong><font size=-2>DATO - 2015</TD><TD><strong><font size=-2>&nbsp;Tid&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;NO<sub>2 </sub>&nbsp;&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;NO<sub>x </sub>&nbsp;&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;O<sub>3 </sub>&nbsp;&nbsp;&nbsp;</TD></TR>
 <TR><TD><center><font size=-2>15/2</TD><TD><center><font size=-2> 23-24</TD><TD><center><font size=-2>4.30</TD><TD><center><font size=-2>5.18</TD><TD><center><font size=-2>76.39</TD></TR>
 <TR><TD><center><font size=-2>15/2</TD><TD><center><font size=-2> 22-23</TD><TD><center><font size=-2>5.58</TD><TD><center><font size=-2>6.40</TD><TD><center><font size=-2>76.24</TD></TR>
 <TR><TD><center><font size=-2>15/2</TD><TD><center><font size=-2> 21-22</TD><TD><center><font size=-2>5.91</TD><TD><center><font size=-2>6.97</TD><TD><center><font size=-2>78.24</TD></TR>
 <TR><TD><center><font size=-2>15/2</TD><TD><center><font size=-2> 20-21</TD><TD><center><font size=-2>6.25</TD><TD><center><font size=-2>6.99</TD><TD><center><font size=-2>80.91</TD></TR>
 <TR><TD><center><font size=-2>15/2</TD><TD><center><font size=-2> 19-20</TD><TD><center><font size=-2>6.88</TD><TD><center><font size=-2>7.85</TD><TD><center><font size=-2>81.27</TD></TR>
 <TR><TD><center><font size=-2>15/2</TD><TD><center><font size=-2> 18-19</TD><TD><center><font size=-2>8.45</TD><TD><center><font size=-2>9.55</TD><TD><center><font size=-2>80.30</TD></TR>
 <TR><TD><center><font size=-2>15/2</TD><TD><center><font size=-2> 17-18</TD><TD><center><font size=-2>8.80</TD><TD><center><font size=-2>10.05</TD><TD><center><font size=-2>78.58</TD></TR>
 <TR><TD><center><font size=-2>15/2</TD><TD><center><font size=-2> 16-17</TD><TD><center><font size=-2>9.63</TD><TD><center><font size=-2>11.35</TD><TD><center><font size=-2>76.12</TD></TR>
 <TR><TD><center><font size=-2>15/2</TD><TD><center><font size=-2> 15-16</TD><TD><center><font size=-2>9.60</TD><TD><center><font size=-2>11.33</TD><TD><center><font size=-2>76.41</TD></TR>
 <TR><TD><center><font size=-2>15/2</TD><TD><center><font size=-2> 14-15</TD><TD><center><font size=-2>9.38</TD><TD><center><font size=-2>11.77</TD><TD><center><font size=-2>76.57</TD></TR>
 <TR><TD><center><font size=-2>15/2</TD><TD><center><font size=-2> 13-14</TD><TD><center><font size=-2>7.86</TD><TD><center><font size=-2>9.95</TD><TD><center><font size=-2>73.96</TD></TR>
 <TR><TD><center><font size=-2>15/2</TD><TD><center><font size=-2> 12-13</TD><TD><center><font size=-2>5.81</TD><TD><center><font size=-2>7.59</TD><TD><center><font size=-2>74.75</TD></TR>
 <TR><TD><center><font size=-2>15/2</TD><TD><center><font size=-2> 11-12</TD><TD><center><font size=-2>7.78</TD><TD><center><font size=-2>9.95</TD><TD><center><font size=-2>69.83</TD></TR>
 <TR><TD><center><font size=-2>15/2</TD><TD><center><font size=-2> 10-11</TD><TD><center><font size=-2>6.51</TD><TD><center><font size=-2>8.12</TD><TD><center><font size=-2>72.06</TD></TR>
 <TR><TD><center><font size=-2>15/2</TD><TD><center><font size=-2> 9-10</TD><TD><center><font size=-2>5.56</TD><TD><center><font size=-2>6.77</TD><TD><center><font size=-2>71.74</TD></TR>
 <TR><TD><center><font size=-2>15/2</TD><TD><center><font size=-2> 8- 9</TD><TD><center><font size=-2>5.57</TD><TD><center><font size=-2>6.68</TD><TD><center><font size=-2>70.46</TD></TR>
 <TR><TD><center><font size=-2>15/2</TD><TD><center><font size=-2> 7- 8</TD><TD><center><font size=-2>4.96</TD><TD><center><font size=-2>6.07</TD><TD><center><font size=-2>70.19</TD></TR>
 <TR><TD><center><font size=-2>15/2</TD><TD><center><font size=-2> 6- 7</TD><TD><center><font size=-2>5.09</TD><TD><center><font size=-2>6.05</TD><TD><center><font size=-2>69.53</TD></TR>
 <TR><TD><center><font size=-2>15/2</TD><TD><center><font size=-2> 5- 6</TD><TD><center><font size=-2>5.81</TD><TD><center><font size=-2>6.91</TD><TD><center><font size=-2>66.67</TD></TR>
 <TR><TD><center><font size=-2>15/2</TD><TD><center><font size=-2> 4- 5</TD><TD><center><font size=-2>7.73</TD><TD><center><font size=-2>8.76</TD><TD><center><font size=-2>60.06</TD></TR>
 <TR><TD><center><font size=-2>15/2</TD><TD><center><font size=-2> 3- 4</TD><TD><center><font size=-2>7.23</TD><TD><center><font size=-2>8.87</TD><TD><center><font size=-2>56.38</TD></TR>
 <TR><TD><center><font size=-2>15/2</TD><TD><center><font size=-2> 2- 3</TD><TD><center><font size=-2>7.84</TD><TD><center><font size=-2>9.29</TD><TD><center><font size=-2>57.76</TD></TR>
 <TR><TD><center><font size=-2>15/2</TD><TD><center><font size=-2> 1- 2</TD><TD><center><font size=-2>7.90</TD><TD><center><font size=-2>9.47</TD><TD><center><font size=-2>58.84</TD></TR>
 <TR><TD><center><font size=-2>15/2</TD><TD><center><font size=-2> 0- 1</TD><TD><center><font size=-2>8.90</TD><TD><center><font size=-2>10.51</TD><TD><center><font size=-2>58.01</TD></TR>
 <TR><TD><strong><font size=-2>DATO - 2015</TD><TD><strong><font size=-2>&nbsp;Tid&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;NO<sub>2 </sub>&nbsp;&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;NO<sub>x </sub>&nbsp;&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;O<sub>3 </sub>&nbsp;&nbsp;&nbsp;</TD></TR>
 <TR><TD><center><font size=-2>14/2</TD><TD><center><font size=-2> 23-24</TD><TD><center><font size=-2>9.64</TD><TD><center><font size=-2>11.36</TD><TD><center><font size=-2>57.96</TD></TR>
 <TR><TD><center><font size=-2>14/2</TD><TD><center><font size=-2> 22-23</TD><TD><center><font size=-2>10.18</TD><TD><center><font size=-2>12.13</TD><TD><center><font size=-2>57.79</TD></TR>
 <TR><TD><center><font size=-2>14/2</TD><TD><center><font size=-2> 21-22</TD><TD><center><font size=-2>12.36</TD><TD><center><font size=-2>14.03</TD><TD><center><font size=-2>54.18</TD></TR>
 <TR><TD><center><font size=-2>14/2</TD><TD><center><font size=-2> 20-21</TD><TD><center><font size=-2>14.07</TD><TD><center><font size=-2>16.19</TD><TD><center><font size=-2>50.47</TD></TR>
 <TR><TD><center><font size=-2>14/2</TD><TD><center><font size=-2> 19-20</TD><TD><center><font size=-2>14.32</TD><TD><center><font size=-2>17.30</TD><TD><center><font size=-2>43.74</TD></TR>
 <TR><TD><center><font size=-2>14/2</TD><TD><center><font size=-2> 18-19</TD><TD><center><font size=-2>18.35</TD><TD><center><font size=-2>21.01</TD><TD><center><font size=-2>41.68</TD></TR>
 <TR><TD><center><font size=-2>14/2</TD><TD><center><font size=-2> 17-18</TD><TD><center><font size=-2>23.95</TD><TD><center><font size=-2>27.25</TD><TD><center><font size=-2>32.29</TD></TR>
 <TR><TD><center><font size=-2>14/2</TD><TD><center><font size=-2> 16-17</TD><TD><center><font size=-2>19.16</TD><TD><center><font size=-2>23.58</TD><TD><center><font size=-2>37.23</TD></TR>
 <TR><TD><center><font size=-2>14/2</TD><TD><center><font size=-2> 15-16</TD><TD><center><font size=-2>18.26</TD><TD><center><font size=-2>26.43</TD><TD><center><font size=-2>32.62</TD></TR>
 <TR><TD><center><font size=-2>14/2</TD><TD><center><font size=-2> 14-15</TD><TD><center><font size=-2>18.39</TD><TD><center><font size=-2>26.33</TD><TD><center><font size=-2>29.98</TD></TR>
 <TR><TD><center><font size=-2>14/2</TD><TD><center><font size=-2> 13-14</TD><TD><center><font size=-2>18.27</TD><TD><center><font size=-2>25.85</TD><TD><center><font size=-2>30.41</TD></TR>
 <TR><TD><center><font size=-2>14/2</TD><TD><center><font size=-2> 12-13</TD><TD><center><font size=-2>19.88</TD><TD><center><font size=-2>29.97</TD><TD><center><font size=-2>21.06</TD></TR>
 <TR><TD><center><font size=-2>14/2</TD><TD><center><font size=-2> 11-12</TD><TD><center><font size=-2>21.49</TD><TD><center><font size=-2>34.79</TD><TD><center><font size=-2>15.57</TD></TR>
 <TR><TD><center><font size=-2>14/2</TD><TD><center><font size=-2> 10-11</TD><TD><center><font size=-2>22.03</TD><TD><center><font size=-2>32.66</TD><TD><center><font size=-2>13.92</TD></TR>
 <TR><TD><center><font size=-2>14/2</TD><TD><center><font size=-2> 9-10</TD><TD><center><font size=-2>17.42</TD><TD><center><font size=-2>23.35</TD><TD><center><font size=-2>18.26</TD></TR>
 <TR><TD><center><font size=-2>14/2</TD><TD><center><font size=-2> 8- 9</TD><TD><center><font size=-2>16.86</TD><TD><center><font size=-2>19.98</TD><TD><center><font size=-2>20.52</TD></TR>
 <TR><TD><center><font size=-2>14/2</TD><TD><center><font size=-2> 7- 8</TD><TD><center><font size=-2>14.26</TD><TD><center><font size=-2>16.70</TD><TD><center><font size=-2>25.19</TD></TR>
 <TR><TD><center><font size=-2>14/2</TD><TD><center><font size=-2> 6- 7</TD><TD><center><font size=-2>14.23</TD><TD><center><font size=-2>15.53</TD><TD><center><font size=-2>27.62</TD></TR>
 <TR><TD><center><font size=-2>14/2</TD><TD><center><font size=-2> 5- 6</TD><TD><center><font size=-2>13.87</TD><TD><center><font size=-2>15.32</TD><TD><center><font size=-2>28.54</TD></TR>
 <TR><TD><center><font size=-2>14/2</TD><TD><center><font size=-2> 4- 5</TD><TD><center><font size=-2>11.79</TD><TD><center><font size=-2>12.96</TD><TD><center><font size=-2>32.21</TD></TR>
 <TR><TD><center><font size=-2>14/2</TD><TD><center><font size=-2> 3- 4</TD><TD><center><font size=-2>11.36</TD><TD><center><font size=-2>12.73</TD><TD><center><font size=-2>34.68</TD></TR>
 <TR><TD><center><font size=-2>14/2</TD><TD><center><font size=-2> 2- 3</TD><TD><center><font size=-2>10.45</TD><TD><center><font size=-2>11.45</TD><TD><center><font size=-2>37.13</TD></TR>
 <TR><TD><center><font size=-2>14/2</TD><TD><center><font size=-2> 1- 2</TD><TD><center><font size=-2>14.06</TD><TD><center><font size=-2>15.08</TD><TD><center><font size=-2>33.15</TD></TR>
 <TR><TD><center><font size=-2>14/2</TD><TD><center><font size=-2> 0- 1</TD><TD><center><font size=-2>18.66</TD><TD><center><font size=-2>19.85</TD><TD><center><font size=-2>27.25</TD></TR>
 <TR><TD><strong><font size=-2>DATO - 2015</TD><TD><strong><font size=-2>&nbsp;Tid&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;NO<sub>2 </sub>&nbsp;&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;NO<sub>x </sub>&nbsp;&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;O<sub>3 </sub>&nbsp;&nbsp;&nbsp;</TD></TR>
 <TR><TD><center><font size=-2>13/2</TD><TD><center><font size=-2> 23-24</TD><TD><center><font size=-2>23.03</TD><TD><center><font size=-2>24.24</TD><TD><center><font size=-2>22.60</TD></TR>
 <TR><TD><center><font size=-2>13/2</TD><TD><center><font size=-2> 22-23</TD><TD><center><font size=-2>22.28</TD><TD><center><font size=-2>22.95</TD><TD><center><font size=-2>26.75</TD></TR>
 <TR><TD><center><font size=-2>13/2</TD><TD><center><font size=-2> 21-22</TD><TD><center><font size=-2>20.45</TD><TD><center><font size=-2>21.07</TD><TD><center><font size=-2>29.32</TD></TR>
 <TR><TD><center><font size=-2>13/2</TD><TD><center><font size=-2> 20-21</TD><TD><center><font size=-2>19.19</TD><TD><center><font size=-2>19.88</TD><TD><center><font size=-2>32.71</TD></TR>
 <TR><TD><center><font size=-2>13/2</TD><TD><center><font size=-2> 19-20</TD><TD><center><font size=-2>17.71</TD><TD><center><font size=-2>18.30</TD><TD><center><font size=-2>33.31</TD></TR>
 <TR><TD><center><font size=-2>13/2</TD><TD><center><font size=-2> 18-19</TD><TD><center><font size=-2>20.76</TD><TD><center><font size=-2>22.19</TD><TD><center><font size=-2>33.03</TD></TR>
 <TR><TD><center><font size=-2>13/2</TD><TD><center><font size=-2> 17-18</TD><TD><center><font size=-2>22.84</TD><TD><center><font size=-2>23.90</TD><TD><center><font size=-2>31.17</TD></TR>
 <TR><TD><center><font size=-2>13/2</TD><TD><center><font size=-2> 16-17</TD><TD><center><font size=-2>22.84</TD><TD><center><font size=-2>24.73</TD><TD><center><font size=-2>28.98</TD></TR>
 <TR><TD><center><font size=-2>13/2</TD><TD><center><font size=-2> 15-16</TD><TD><center><font size=-2>19.82</TD><TD><center><font size=-2>23.15</TD><TD><center><font size=-2>32.78</TD></TR>
 <TR><TD><center><font size=-2>13/2</TD><TD><center><font size=-2> 14-15</TD><TD><center><font size=-2>18.28</TD><TD><center><font size=-2>24.31</TD><TD><center><font size=-2>29.32</TD></TR>
 <TR><TD><center><font size=-2>13/2</TD><TD><center><font size=-2> 13-14</TD><TD><center><font size=-2>19.35</TD><TD><center><font size=-2>28.03</TD><TD><center><font size=-2>26.67</TD></TR>
 <TR><TD><center><font size=-2>13/2</TD><TD><center><font size=-2> 12-13</TD><TD><center><font size=-2>19.25</TD><TD><center><font size=-2>28.68</TD><TD><center><font size=-2>24.23</TD></TR>
 <TR><TD><center><font size=-2>13/2</TD><TD><center><font size=-2> 11-12</TD><TD><center><font size=-2>23.66</TD><TD><center><font size=-2>33.53</TD><TD><center><font size=-2>16.96</TD></TR>
 <TR><TD><center><font size=-2>13/2</TD><TD><center><font size=-2> 10-11</TD><TD><center><font size=-2>24.59</TD><TD><center><font size=-2>31.29</TD><TD><center><font size=-2>15.93</TD></TR>
 <TR><TD><center><font size=-2>13/2</TD><TD><center><font size=-2> 9-10</TD><TD><center><font size=-2>25.78</TD><TD><center><font size=-2>32.63</TD><TD><center><font size=-2>12.47</TD></TR>
 <TR><TD><center><font size=-2>13/2</TD><TD><center><font size=-2> 8- 9</TD><TD><center><font size=-2>28.88</TD><TD><center><font size=-2>35.75</TD><TD><center><font size=-2>8.47</TD></TR>
 <TR><TD><center><font size=-2>13/2</TD><TD><center><font size=-2> 7- 8</TD><TD><center><font size=-2>29.00</TD><TD><center><font size=-2>36.84</TD><TD><center><font size=-2>8.19</TD></TR>
 <TR><TD><center><font size=-2>13/2</TD><TD><center><font size=-2> 6- 7</TD><TD><center><font size=-2>24.18</TD><TD><center><font size=-2>34.14</TD><TD><center><font size=-2>13.86</TD></TR>
 <TR><TD><center><font size=-2>13/2</TD><TD><center><font size=-2> 5- 6</TD><TD><center><font size=-2>18.42</TD><TD><center><font size=-2>18.84</TD><TD><center><font size=-2>19.52</TD></TR>
 <TR><TD><center><font size=-2>13/2</TD><TD><center><font size=-2> 4- 5</TD><TD><center><font size=-2>12.25</TD><TD><center><font size=-2>12.69</TD><TD><center><font size=-2>27.45</TD></TR>
 <TR><TD><center><font size=-2>13/2</TD><TD><center><font size=-2> 3- 4</TD><TD><center><font size=-2>16.07</TD><TD><center><font size=-2>16.64</TD><TD><center><font size=-2>23.71</TD></TR>
 <TR><TD><center><font size=-2>13/2</TD><TD><center><font size=-2> 2- 3</TD><TD><center><font size=-2>22.78</TD><TD><center><font size=-2>24.04</TD><TD><center><font size=-2>25.16</TD></TR>
 <TR><TD><center><font size=-2>13/2</TD><TD><center><font size=-2> 1- 2</TD><TD><center><font size=-2>34.18</TD><TD><center><font size=-2>35.25</TD><TD><center><font size=-2>11.30</TD></TR>
 <TR><TD><center><font size=-2>13/2</TD><TD><center><font size=-2> 0- 1</TD><TD><center><font size=-2>18.39</TD><TD><center><font size=-2>18.88</TD><TD><center><font size=-2>25.32</TD></TR>
 <TR><TD><strong><font size=-2>DATO - 2015</TD><TD><strong><font size=-2>&nbsp;Tid&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;NO<sub>2 </sub>&nbsp;&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;NO<sub>x </sub>&nbsp;&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;O<sub>3 </sub>&nbsp;&nbsp;&nbsp;</TD></TR>
 <TR><TD><center><font size=-2>12/2</TD><TD><center><font size=-2> 23-24</TD><TD><center><font size=-2>12.92</TD><TD><center><font size=-2>13.47</TD><TD><center><font size=-2>33.90</TD></TR>
 <TR><TD><center><font size=-2>12/2</TD><TD><center><font size=-2> 22-23</TD><TD><center><font size=-2>12.14</TD><TD><center><font size=-2>12.98</TD><TD><center><font size=-2>36.12</TD></TR>
 <TR><TD><center><font size=-2>12/2</TD><TD><center><font size=-2> 21-22</TD><TD><center><font size=-2>11.54</TD><TD><center><font size=-2>12.53</TD><TD><center><font size=-2>37.18</TD></TR>
 <TR><TD><center><font size=-2>12/2</TD><TD><center><font size=-2> 20-21</TD><TD><center><font size=-2>9.48</TD><TD><center><font size=-2>10.26</TD><TD><center><font size=-2>40.94</TD></TR>
 <TR><TD><center><font size=-2>12/2</TD><TD><center><font size=-2> 19-20</TD><TD><center><font size=-2>10.99</TD><TD><center><font size=-2>11.83</TD><TD><center><font size=-2>40.34</TD></TR>
 <TR><TD><center><font size=-2>12/2</TD><TD><center><font size=-2> 18-19</TD><TD><center><font size=-2>14.27</TD><TD><center><font size=-2>15.25</TD><TD><center><font size=-2>38.04</TD></TR>
 <TR><TD><center><font size=-2>12/2</TD><TD><center><font size=-2> 17-18</TD><TD><center><font size=-2>12.51</TD><TD><center><font size=-2>13.31</TD><TD><center><font size=-2>40.95</TD></TR>
 <TR><TD><center><font size=-2>12/2</TD><TD><center><font size=-2> 16-17</TD><TD><center><font size=-2>13.08</TD><TD><center><font size=-2>14.49</TD><TD><center><font size=-2>40.56</TD></TR>
 <TR><TD><center><font size=-2>12/2</TD><TD><center><font size=-2> 15-16</TD><TD><center><font size=-2>14.84</TD><TD><center><font size=-2>16.80</TD><TD><center><font size=-2>39.70</TD></TR>
 <TR><TD><center><font size=-2>12/2</TD><TD><center><font size=-2> 14-15</TD><TD><center><font size=-2>14.23</TD><TD><center><font size=-2>16.20</TD><TD><center><font size=-2>43.00</TD></TR>
 <TR><TD><center><font size=-2>12/2</TD><TD><center><font size=-2> 13-14</TD><TD><center><font size=-2>13.22</TD><TD><center><font size=-2>15.75</TD><TD><center><font size=-2>44.91</TD></TR>
 <TR><TD><center><font size=-2>12/2</TD><TD><center><font size=-2> 12-13</TD><TD><center><font size=-2>13.58</TD><TD><center><font size=-2>15.93</TD><TD><center><font size=-2>43.81</TD></TR>
 <TR><TD><center><font size=-2>12/2</TD><TD><center><font size=-2> 11-12</TD><TD><center><font size=-2>13.66</TD><TD><center><font size=-2>16.21</TD><TD><center><font size=-2>43.94</TD></TR>
 <TR><TD><center><font size=-2>12/2</TD><TD><center><font size=-2> 10-11</TD><TD><center><font size=-2>21.84</TD><TD><center><font size=-2>36.11</TD><TD><center><font size=-2>34.21</TD></TR>
 <TR><TD><center><font size=-2>12/2</TD><TD><center><font size=-2> 9-10</TD><TD><center><font size=-2>16.48</TD><TD><center><font size=-2>18.52</TD><TD><center><font size=-2>39.64</TD></TR>
 <TR><TD><center><font size=-2>12/2</TD><TD><center><font size=-2> 8- 9</TD><TD><center><font size=-2>17.69</TD><TD><center><font size=-2>20.23</TD><TD><center><font size=-2>37.70</TD></TR>
 <TR><TD><center><font size=-2>12/2</TD><TD><center><font size=-2> 7- 8</TD><TD><center><font size=-2>15.06</TD><TD><center><font size=-2>16.25</TD><TD><center><font size=-2>42.62</TD></TR>
 <TR><TD><center><font size=-2>12/2</TD><TD><center><font size=-2> 6- 7</TD><TD><center><font size=-2>9.78</TD><TD><center><font size=-2>10.50</TD><TD><center><font size=-2>49.75</TD></TR>
 <TR><TD><center><font size=-2>12/2</TD><TD><center><font size=-2> 5- 6</TD><TD><center><font size=-2>6.34</TD><TD><center><font size=-2>6.99</TD><TD><center><font size=-2>55.62</TD></TR>
 <TR><TD><center><font size=-2>12/2</TD><TD><center><font size=-2> 4- 5</TD><TD><center><font size=-2>5.70</TD><TD><center><font size=-2>6.41</TD><TD><center><font size=-2>59.20</TD></TR>
 <TR><TD><center><font size=-2>12/2</TD><TD><center><font size=-2> 3- 4</TD><TD><center><font size=-2>4.21</TD><TD><center><font size=-2>4.47</TD><TD><center><font size=-2>63.46</TD></TR>
 <TR><TD><center><font size=-2>12/2</TD><TD><center><font size=-2> 2- 3</TD><TD><center><font size=-2>4.96</TD><TD><center><font size=-2>5.58</TD><TD><center><font size=-2>65.25</TD></TR>
 <TR><TD><center><font size=-2>12/2</TD><TD><center><font size=-2> 1- 2</TD><TD><center><font size=-2>5.69</TD><TD><center><font size=-2>6.17</TD><TD><center><font size=-2>64.10</TD></TR>
 <TR><TD><center><font size=-2>12/2</TD><TD><center><font size=-2> 0- 1</TD><TD><center><font size=-2>4.55</TD><TD><center><font size=-2>4.99</TD><TD><center><font size=-2>68.08</TD></TR>
 <TR><TD><strong><font size=-2>DATO - 2015</TD><TD><strong><font size=-2>&nbsp;Tid&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;NO<sub>2 </sub>&nbsp;&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;NO<sub>x </sub>&nbsp;&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;O<sub>3 </sub>&nbsp;&nbsp;&nbsp;</TD></TR>
 <TR><TD><center><font size=-2>11/2</TD><TD><center><font size=-2> 23-24</TD><TD><center><font size=-2>4.46</TD><TD><center><font size=-2>5.06</TD><TD><center><font size=-2>69.31</TD></TR>
 <TR><TD><center><font size=-2>11/2</TD><TD><center><font size=-2> 22-23</TD><TD><center><font size=-2>4.62</TD><TD><center><font size=-2>4.75</TD><TD><center><font size=-2>69.99</TD></TR>
 <TR><TD><center><font size=-2>11/2</TD><TD><center><font size=-2> 21-22</TD><TD><center><font size=-2>5.30</TD><TD><center><font size=-2>5.65</TD><TD><center><font size=-2>68.88</TD></TR>
 <TR><TD><center><font size=-2>11/2</TD><TD><center><font size=-2> 20-21</TD><TD><center><font size=-2>7.09</TD><TD><center><font size=-2>7.32</TD><TD><center><font size=-2>67.42</TD></TR>
 <TR><TD><center><font size=-2>11/2</TD><TD><center><font size=-2> 19-20</TD><TD><center><font size=-2>8.30</TD><TD><center><font size=-2>8.76</TD><TD><center><font size=-2>66.73</TD></TR>
 <TR><TD><center><font size=-2>11/2</TD><TD><center><font size=-2> 18-19</TD><TD><center><font size=-2>8.10</TD><TD><center><font size=-2>8.44</TD><TD><center><font size=-2>67.64</TD></TR>
 <TR><TD><center><font size=-2>11/2</TD><TD><center><font size=-2> 17-18</TD><TD><center><font size=-2>8.12</TD><TD><center><font size=-2>8.40</TD><TD><center><font size=-2>67.67</TD></TR>
 <TR><TD><center><font size=-2>11/2</TD><TD><center><font size=-2> 16-17</TD><TD><center><font size=-2>10.44</TD><TD><center><font size=-2>10.80</TD><TD><center><font size=-2>63.20</TD></TR>
 <TR><TD><center><font size=-2>11/2</TD><TD><center><font size=-2> 15-16</TD><TD><center><font size=-2>7.88</TD><TD><center><font size=-2>8.54</TD><TD><center><font size=-2>64.88</TD></TR>
 <TR><TD><center><font size=-2>11/2</TD><TD><center><font size=-2> 14-15</TD><TD><center><font size=-2>8.97</TD><TD><center><font size=-2>9.54</TD><TD><center><font size=-2>64.75</TD></TR>
 <TR><TD><center><font size=-2>11/2</TD><TD><center><font size=-2> 13-14</TD><TD><center><font size=-2>11.47</TD><TD><center><font size=-2>12.77</TD><TD><center><font size=-2>62.15</TD></TR>
 <TR><TD><center><font size=-2>11/2</TD><TD><center><font size=-2> 12-13</TD><TD><center><font size=-2>12.47</TD><TD><center><font size=-2>14.11</TD><TD><center><font size=-2>56.59</TD></TR>
 <TR><TD><center><font size=-2>11/2</TD><TD><center><font size=-2> 11-12</TD><TD><center><font size=-2>13.09</TD><TD><center><font size=-2>14.88</TD><TD><center><font size=-2>53.54</TD></TR>
 <TR><TD><center><font size=-2>11/2</TD><TD><center><font size=-2> 10-11</TD><TD><center><font size=-2>14.99</TD><TD><center><font size=-2>16.48</TD><TD><center><font size=-2>54.21</TD></TR>
 <TR><TD><center><font size=-2>11/2</TD><TD><center><font size=-2> 9-10</TD><TD><center><font size=-2>13.13</TD><TD><center><font size=-2>14.28</TD><TD><center><font size=-2>59.22</TD></TR>
 <TR><TD><center><font size=-2>11/2</TD><TD><center><font size=-2> 8- 9</TD><TD><center><font size=-2>17.30</TD><TD><center><font size=-2>17.76</TD><TD><center><font size=-2>57.15</TD></TR>
 <TR><TD><center><font size=-2>11/2</TD><TD><center><font size=-2> 7- 8</TD><TD><center><font size=-2>17.69</TD><TD><center><font size=-2>21.10</TD><TD><center><font size=-2>58.70</TD></TR>
 <TR><TD><center><font size=-2>11/2</TD><TD><center><font size=-2> 6- 7</TD><TD><center><font size=-2>9.48</TD><TD><center><font size=-2>10.13</TD><TD><center><font size=-2>67.32</TD></TR>
 <TR><TD><center><font size=-2>11/2</TD><TD><center><font size=-2> 5- 6</TD><TD><center><font size=-2>8.62</TD><TD><center><font size=-2>9.50</TD><TD><center><font size=-2>65.06</TD></TR>
 <TR><TD><center><font size=-2>11/2</TD><TD><center><font size=-2> 4- 5</TD><TD><center><font size=-2>3.61</TD><TD><center><font size=-2>3.69</TD><TD><center><font size=-2>68.93</TD></TR>
 <TR><TD><center><font size=-2>11/2</TD><TD><center><font size=-2> 3- 4</TD><TD><center><font size=-2>2.37</TD><TD><center><font size=-2>2.10</TD><TD><center><font size=-2>71.22</TD></TR>
 <TR><TD><center><font size=-2>11/2</TD><TD><center><font size=-2> 2- 3</TD><TD><center><font size=-2>3.06</TD><TD><center><font size=-2>2.83</TD><TD><center><font size=-2>68.43</TD></TR>
 <TR><TD><center><font size=-2>11/2</TD><TD><center><font size=-2> 1- 2</TD><TD><center><font size=-2>3.87</TD><TD><center><font size=-2>3.49</TD><TD><center><font size=-2>66.76</TD></TR>
 <TR><TD><center><font size=-2>11/2</TD><TD><center><font size=-2> 0- 1</TD><TD><center><font size=-2>9.23</TD><TD><center><font size=-2>9.17</TD><TD><center><font size=-2>59.08</TD></TR>
 <TR><TD><strong><font size=-2>DATO - 2015</TD><TD><strong><font size=-2>&nbsp;Tid&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;NO<sub>2 </sub>&nbsp;&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;NO<sub>x </sub>&nbsp;&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;O<sub>3 </sub>&nbsp;&nbsp;&nbsp;</TD></TR>
 <TR><TD><center><font size=-2>10/2</TD><TD><center><font size=-2> 23-24</TD><TD><center><font size=-2>10.25</TD><TD><center><font size=-2>10.54</TD><TD><center><font size=-2>60.52</TD></TR>
 <TR><TD><center><font size=-2>10/2</TD><TD><center><font size=-2> 22-23</TD><TD><center><font size=-2>10.42</TD><TD><center><font size=-2>10.95</TD><TD><center><font size=-2>61.33</TD></TR>
 <TR><TD><center><font size=-2>10/2</TD><TD><center><font size=-2> 21-22</TD><TD><center><font size=-2>9.99</TD><TD><center><font size=-2>10.29</TD><TD><center><font size=-2>64.86</TD></TR>
 <TR><TD><center><font size=-2>10/2</TD><TD><center><font size=-2> 20-21</TD><TD><center><font size=-2>10.96</TD><TD><center><font size=-2>11.30</TD><TD><center><font size=-2>65.52</TD></TR>
 <TR><TD><center><font size=-2>10/2</TD><TD><center><font size=-2> 19-20</TD><TD><center><font size=-2>13.79</TD><TD><center><font size=-2>14.29</TD><TD><center><font size=-2>65.55</TD></TR>
 <TR><TD><center><font size=-2>10/2</TD><TD><center><font size=-2> 18-19</TD><TD><center><font size=-2>12.59</TD><TD><center><font size=-2>13.19</TD><TD><center><font size=-2>66.71</TD></TR>
 <TR><TD><center><font size=-2>10/2</TD><TD><center><font size=-2> 17-18</TD><TD><center><font size=-2>9.59</TD><TD><center><font size=-2>10.09</TD><TD><center><font size=-2>69.11</TD></TR>
 <TR><TD><center><font size=-2>10/2</TD><TD><center><font size=-2> 16-17</TD><TD><center><font size=-2>10.95</TD><TD><center><font size=-2>12.39</TD><TD><center><font size=-2>68.33</TD></TR>
 <TR><TD><center><font size=-2>10/2</TD><TD><center><font size=-2> 15-16</TD><TD><center><font size=-2>8.97</TD><TD><center><font size=-2>10.43</TD><TD><center><font size=-2>70.05</TD></TR>
 <TR><TD><center><font size=-2>10/2</TD><TD><center><font size=-2> 14-15</TD><TD><center><font size=-2>8.03</TD><TD><center><font size=-2>10.12</TD><TD><center><font size=-2>71.53</TD></TR>
 <TR><TD><center><font size=-2>10/2</TD><TD><center><font size=-2> 13-14</TD><TD><center><font size=-2>7.99</TD><TD><center><font size=-2>10.42</TD><TD><center><font size=-2>71.74</TD></TR>
 <TR><TD><center><font size=-2>10/2</TD><TD><center><font size=-2> 12-13</TD><TD><center><font size=-2>7.00</TD><TD><center><font size=-2>9.13</TD><TD><center><font size=-2>72.54</TD></TR>
 <TR><TD><center><font size=-2>10/2</TD><TD><center><font size=-2> 11-12</TD><TD><center><font size=-2>8.78</TD><TD><center><font size=-2>10.53</TD><TD><center><font size=-2>69.21</TD></TR>
 <TR><TD><center><font size=-2>10/2</TD><TD><center><font size=-2> 10-11</TD><TD><center><font size=-2>9.98</TD><TD><center><font size=-2>12.44</TD><TD><center><font size=-2>68.41</TD></TR>
 <TR><TD><center><font size=-2>10/2</TD><TD><center><font size=-2> 9-10</TD><TD><center><font size=-2>14.34</TD><TD><center><font size=-2>17.12</TD><TD><center><font size=-2>65.97</TD></TR>
 <TR><TD><center><font size=-2>10/2</TD><TD><center><font size=-2> 8- 9</TD><TD><center><font size=-2>12.08</TD><TD><center><font size=-2>13.84</TD><TD><center><font size=-2>69.85</TD></TR>
 <TR><TD><center><font size=-2>10/2</TD><TD><center><font size=-2> 7- 8</TD><TD><center><font size=-2>11.00</TD><TD><center><font size=-2>14.33</TD><TD><center><font size=-2>72.18</TD></TR>
 <TR><TD><center><font size=-2>10/2</TD><TD><center><font size=-2> 6- 7</TD><TD><center><font size=-2>7.29</TD><TD><center><font size=-2>8.86</TD><TD><center><font size=-2>74.05</TD></TR>
 <TR><TD><center><font size=-2>10/2</TD><TD><center><font size=-2> 5- 6</TD><TD><center><font size=-2>3.87</TD><TD><center><font size=-2>3.85</TD><TD><center><font size=-2>77.18</TD></TR>
 <TR><TD><center><font size=-2>10/2</TD><TD><center><font size=-2> 4- 5</TD><TD><center><font size=-2>4.22</TD><TD><center><font size=-2>4.71</TD><TD><center><font size=-2>77.03</TD></TR>
 <TR><TD><center><font size=-2>10/2</TD><TD><center><font size=-2> 3- 4</TD><TD><center><font size=-2>1.32</TD><TD><center><font size=-2>1.82</TD><TD><center><font size=-2>78.67</TD></TR>
 <TR><TD><center><font size=-2>10/2</TD><TD><center><font size=-2> 2- 3</TD><TD><center><font size=-2>2.38</TD><TD><center><font size=-2>2.69</TD><TD><center><font size=-2>76.86</TD></TR>
 <TR><TD><center><font size=-2>10/2</TD><TD><center><font size=-2> 1- 2</TD><TD><center><font size=-2>2.91</TD><TD><center><font size=-2>3.24</TD><TD><center><font size=-2>71.46</TD></TR>
 <TR><TD><center><font size=-2>10/2</TD><TD><center><font size=-2> 0- 1</TD><TD><center><font size=-2>4.13</TD><TD><center><font size=-2>4.51</TD><TD><center><font size=-2>69.87</TD></TR>
 <TR><TD><strong><font size=-2>DATO - 2015</TD><TD><strong><font size=-2>&nbsp;Tid&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;NO<sub>2 </sub>&nbsp;&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;NO<sub>x </sub>&nbsp;&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;O<sub>3 </sub>&nbsp;&nbsp;&nbsp;</TD></TR>
 <TR><TD><center><font size=-2>9/2</TD><TD><center><font size=-2> 23-24</TD><TD><center><font size=-2>5.53</TD><TD><center><font size=-2>6.00</TD><TD><center><font size=-2>69.74</TD></TR>
 <TR><TD><center><font size=-2>9/2</TD><TD><center><font size=-2> 22-23</TD><TD><center><font size=-2>6.68</TD><TD><center><font size=-2>6.99</TD><TD><center><font size=-2>69.00</TD></TR>
 <TR><TD><center><font size=-2>9/2</TD><TD><center><font size=-2> 21-22</TD><TD><center><font size=-2>7.80</TD><TD><center><font size=-2>8.54</TD><TD><center><font size=-2>70.34</TD></TR>
 <TR><TD><center><font size=-2>9/2</TD><TD><center><font size=-2> 20-21</TD><TD><center><font size=-2>7.75</TD><TD><center><font size=-2>8.37</TD><TD><center><font size=-2>71.83</TD></TR>
 <TR><TD><center><font size=-2>9/2</TD><TD><center><font size=-2> 19-20</TD><TD><center><font size=-2>11.04</TD><TD><center><font size=-2>11.38</TD><TD><center><font size=-2>68.32</TD></TR>
 <TR><TD><center><font size=-2>9/2</TD><TD><center><font size=-2> 18-19</TD><TD><center><font size=-2>12.88</TD><TD><center><font size=-2>13.43</TD><TD><center><font size=-2>68.01</TD></TR>
 <TR><TD><center><font size=-2>9/2</TD><TD><center><font size=-2> 17-18</TD><TD><center><font size=-2>12.61</TD><TD><center><font size=-2>13.21</TD><TD><center><font size=-2>70.14</TD></TR>
 <TR><TD><center><font size=-2>9/2</TD><TD><center><font size=-2> 16-17</TD><TD><center><font size=-2>9.35</TD><TD><center><font size=-2>10.23</TD><TD><center><font size=-2>74.72</TD></TR>
 <TR><TD><center><font size=-2>9/2</TD><TD><center><font size=-2> 15-16</TD><TD><center><font size=-2>7.81</TD><TD><center><font size=-2>9.37</TD><TD><center><font size=-2>77.11</TD></TR>
 <TR><TD><center><font size=-2>9/2</TD><TD><center><font size=-2> 14-15</TD><TD><center><font size=-2>7.45</TD><TD><center><font size=-2>9.31</TD><TD><center><font size=-2>78.78</TD></TR>
 <TR><TD><center><font size=-2>9/2</TD><TD><center><font size=-2> 13-14</TD><TD><center><font size=-2>7.14</TD><TD><center><font size=-2>9.39</TD><TD><center><font size=-2>79.14</TD></TR>
 <TR><TD><center><font size=-2>9/2</TD><TD><center><font size=-2> 12-13</TD><TD><center><font size=-2>6.50</TD><TD><center><font size=-2>8.47</TD><TD><center><font size=-2>79.88</TD></TR>
 <TR><TD><center><font size=-2>9/2</TD><TD><center><font size=-2> 11-12</TD><TD><center><font size=-2>7.82</TD><TD><center><font size=-2>10.18</TD><TD><center><font size=-2>78.15</TD></TR>
 <TR><TD><center><font size=-2>9/2</TD><TD><center><font size=-2> 10-11</TD><TD><center><font size=-2>10.52</TD><TD><center><font size=-2>12.92</TD><TD><center><font size=-2>75.88</TD></TR>
 <TR><TD><center><font size=-2>9/2</TD><TD><center><font size=-2> 9-10</TD><TD><center><font size=-2>11.67</TD><TD><center><font size=-2>14.18</TD><TD><center><font size=-2>74.08</TD></TR>
 <TR><TD><center><font size=-2>9/2</TD><TD><center><font size=-2> 8- 9</TD><TD><center><font size=-2>12.64</TD><TD><center><font size=-2>13.95</TD><TD><center><font size=-2>73.15</TD></TR>
 <TR><TD><center><font size=-2>9/2</TD><TD><center><font size=-2> 7- 8</TD><TD><center><font size=-2>12.38</TD><TD><center><font size=-2>14.02</TD><TD><center><font size=-2>72.84</TD></TR>
 <TR><TD><center><font size=-2>9/2</TD><TD><center><font size=-2> 6- 7</TD><TD><center><font size=-2>6.78</TD><TD><center><font size=-2>7.60</TD><TD><center><font size=-2>77.65</TD></TR>
 <TR><TD><center><font size=-2>9/2</TD><TD><center><font size=-2> 5- 6</TD><TD><center><font size=-2>4.70</TD><TD><center><font size=-2>5.92</TD><TD><center><font size=-2>78.88</TD></TR>
 <TR><TD><center><font size=-2>9/2</TD><TD><center><font size=-2> 4- 5</TD><TD><center><font size=-2>2.90</TD><TD><center><font size=-2>3.18</TD><TD><center><font size=-2>80.24</TD></TR>
 <TR><TD><center><font size=-2>9/2</TD><TD><center><font size=-2> 3- 4</TD><TD><center><font size=-2>2.54</TD><TD><center><font size=-2>2.78</TD><TD><center><font size=-2>80.22</TD></TR>
 <TR><TD><center><font size=-2>9/2</TD><TD><center><font size=-2> 2- 3</TD><TD><center><font size=-2>1.20</TD><TD><center><font size=-2>1.05</TD><TD><center><font size=-2>80.87</TD></TR>
 <TR><TD><center><font size=-2>9/2</TD><TD><center><font size=-2> 1- 2</TD><TD><center><font size=-2>1.19</TD><TD><center><font size=-2>1.25</TD><TD><center><font size=-2>80.16</TD></TR>
 <TR><TD><center><font size=-2>9/2</TD><TD><center><font size=-2> 0- 1</TD><TD><center><font size=-2>1.46</TD><TD><center><font size=-2>1.57</TD><TD><center><font size=-2>78.72</TD></TR>
 <TR><TD><strong><font size=-2>DATO - 2015</TD><TD><strong><font size=-2>&nbsp;Tid&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;NO<sub>2 </sub>&nbsp;&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;NO<sub>x </sub>&nbsp;&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;O<sub>3 </sub>&nbsp;&nbsp;&nbsp;</TD></TR>
 <TR><TD><center><font size=-2>8/2</TD><TD><center><font size=-2> 23-24</TD><TD><center><font size=-2>2.48</TD><TD><center><font size=-2>2.79</TD><TD><center><font size=-2>77.58</TD></TR>
 <TR><TD><center><font size=-2>8/2</TD><TD><center><font size=-2> 22-23</TD><TD><center><font size=-2>3.12</TD><TD><center><font size=-2>3.32</TD><TD><center><font size=-2>72.53</TD></TR>
 <TR><TD><center><font size=-2>8/2</TD><TD><center><font size=-2> 21-22</TD><TD><center><font size=-2>4.42</TD><TD><center><font size=-2>4.38</TD><TD><center><font size=-2>68.54</TD></TR>
 <TR><TD><center><font size=-2>8/2</TD><TD><center><font size=-2> 20-21</TD><TD><center><font size=-2>4.03</TD><TD><center><font size=-2>4.14</TD><TD><center><font size=-2>69.47</TD></TR>
 <TR><TD><center><font size=-2>8/2</TD><TD><center><font size=-2> 19-20</TD><TD><center><font size=-2>6.62</TD><TD><center><font size=-2>6.56</TD><TD><center><font size=-2>68.23</TD></TR>
 <TR><TD><center><font size=-2>8/2</TD><TD><center><font size=-2> 18-19</TD><TD><center><font size=-2>7.35</TD><TD><center><font size=-2>7.55</TD><TD><center><font size=-2>69.63</TD></TR>
 <TR><TD><center><font size=-2>8/2</TD><TD><center><font size=-2> 17-18</TD><TD><center><font size=-2>5.68</TD><TD><center><font size=-2>5.88</TD><TD><center><font size=-2>73.90</TD></TR>
 <TR><TD><center><font size=-2>8/2</TD><TD><center><font size=-2> 16-17</TD><TD><center><font size=-2>6.13</TD><TD><center><font size=-2>6.93</TD><TD><center><font size=-2>74.09</TD></TR>
 <TR><TD><center><font size=-2>8/2</TD><TD><center><font size=-2> 15-16</TD><TD><center><font size=-2>4.62</TD><TD><center><font size=-2>5.18</TD><TD><center><font size=-2>76.18</TD></TR>
 <TR><TD><center><font size=-2>8/2</TD><TD><center><font size=-2> 14-15</TD><TD><center><font size=-2>4.11</TD><TD><center><font size=-2>5.24</TD><TD><center><font size=-2>77.09</TD></TR>
 <TR><TD><center><font size=-2>8/2</TD><TD><center><font size=-2> 13-14</TD><TD><center><font size=-2>4.02</TD><TD><center><font size=-2>4.81</TD><TD><center><font size=-2>77.14</TD></TR>
 <TR><TD><center><font size=-2>8/2</TD><TD><center><font size=-2> 12-13</TD><TD><center><font size=-2>3.73</TD><TD><center><font size=-2>4.85</TD><TD><center><font size=-2>78.49</TD></TR>
 <TR><TD><center><font size=-2>8/2</TD><TD><center><font size=-2> 11-12</TD><TD><center><font size=-2>3.49</TD><TD><center><font size=-2>4.40</TD><TD><center><font size=-2>78.88</TD></TR>
 <TR><TD><center><font size=-2>8/2</TD><TD><center><font size=-2> 10-11</TD><TD><center><font size=-2>3.84</TD><TD><center><font size=-2>5.20</TD><TD><center><font size=-2>77.24</TD></TR>
 <TR><TD><center><font size=-2>8/2</TD><TD><center><font size=-2> 9-10</TD><TD><center><font size=-2>3.47</TD><TD><center><font size=-2>4.18</TD><TD><center><font size=-2>76.91</TD></TR>
 <TR><TD><center><font size=-2>8/2</TD><TD><center><font size=-2> 8- 9</TD><TD><center><font size=-2>2.38</TD><TD><center><font size=-2>2.71</TD><TD><center><font size=-2>78.14</TD></TR>
 <TR><TD><center><font size=-2>8/2</TD><TD><center><font size=-2> 7- 8</TD><TD><center><font size=-2>2.44</TD><TD><center><font size=-2>2.24</TD><TD><center><font size=-2>76.39</TD></TR>
 <TR><TD><center><font size=-2>8/2</TD><TD><center><font size=-2> 6- 7</TD><TD><center><font size=-2>3.14</TD><TD><center><font size=-2>3.29</TD><TD><center><font size=-2>76.24</TD></TR>
 <TR><TD><center><font size=-2>8/2</TD><TD><center><font size=-2> 5- 6</TD><TD><center><font size=-2>4.29</TD><TD><center><font size=-2>4.74</TD><TD><center><font size=-2>77.72</TD></TR>
 <TR><TD><center><font size=-2>8/2</TD><TD><center><font size=-2> 4- 5</TD><TD><center><font size=-2>2.19</TD><TD><center><font size=-2>2.10</TD><TD><center><font size=-2>79.34</TD></TR>
 <TR><TD><center><font size=-2>8/2</TD><TD><center><font size=-2> 3- 4</TD><TD><center><font size=-2>1.85</TD><TD><center><font size=-2>1.99</TD><TD><center><font size=-2>79.20</TD></TR>
 <TR><TD><center><font size=-2>8/2</TD><TD><center><font size=-2> 2- 3</TD><TD><center><font size=-2>2.06</TD><TD><center><font size=-2>1.97</TD><TD><center><font size=-2>81.30</TD></TR>
 <TR><TD><center><font size=-2>8/2</TD><TD><center><font size=-2> 1- 2</TD><TD><center><font size=-2>1.85</TD><TD><center><font size=-2>1.96</TD><TD><center><font size=-2>82.73</TD></TR>
 <TR><TD><center><font size=-2>8/2</TD><TD><center><font size=-2> 0- 1</TD><TD><center><font size=-2>2.57</TD><TD><center><font size=-2>2.84</TD><TD><center><font size=-2>81.68</TD></TR>
 <TR><TD><strong><font size=-2>DATO - 2015</TD><TD><strong><font size=-2>&nbsp;Tid&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;NO<sub>2 </sub>&nbsp;&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;NO<sub>x </sub>&nbsp;&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;O<sub>3 </sub>&nbsp;&nbsp;&nbsp;</TD></TR>
 <TR><TD><center><font size=-2>7/2</TD><TD><center><font size=-2> 23-24</TD><TD><center><font size=-2>3.05</TD><TD><center><font size=-2>3.08</TD><TD><center><font size=-2>78.53</TD></TR>
 <TR><TD><center><font size=-2>7/2</TD><TD><center><font size=-2> 22-23</TD><TD><center><font size=-2>2.93</TD><TD><center><font size=-2>3.35</TD><TD><center><font size=-2>77.60</TD></TR>
 <TR><TD><center><font size=-2>7/2</TD><TD><center><font size=-2> 21-22</TD><TD><center><font size=-2>2.50</TD><TD><center><font size=-2>2.56</TD><TD><center><font size=-2>77.62</TD></TR>
 <TR><TD><center><font size=-2>7/2</TD><TD><center><font size=-2> 20-21</TD><TD><center><font size=-2>2.55</TD><TD><center><font size=-2>3.30</TD><TD><center><font size=-2>77.38</TD></TR>
 <TR><TD><center><font size=-2>7/2</TD><TD><center><font size=-2> 19-20</TD><TD><center><font size=-2>2.41</TD><TD><center><font size=-2>3.06</TD><TD><center><font size=-2>77.85</TD></TR>
 <TR><TD><center><font size=-2>7/2</TD><TD><center><font size=-2> 18-19</TD><TD><center><font size=-2>3.18</TD><TD><center><font size=-2>3.99</TD><TD><center><font size=-2>76.87</TD></TR>
 <TR><TD><center><font size=-2>7/2</TD><TD><center><font size=-2> 17-18</TD><TD><center><font size=-2>4.16</TD><TD><center><font size=-2>4.73</TD><TD><center><font size=-2>76.45</TD></TR>
 <TR><TD><center><font size=-2>7/2</TD><TD><center><font size=-2> 16-17</TD><TD><center><font size=-2>3.25</TD><TD><center><font size=-2>3.76</TD><TD><center><font size=-2>78.90</TD></TR>
 <TR><TD><center><font size=-2>7/2</TD><TD><center><font size=-2> 15-16</TD><TD><center><font size=-2>3.05</TD><TD><center><font size=-2>4.13</TD><TD><center><font size=-2>79.97</TD></TR>
 <TR><TD><center><font size=-2>7/2</TD><TD><center><font size=-2> 14-15</TD><TD><center><font size=-2>3.60</TD><TD><center><font size=-2>4.67</TD><TD><center><font size=-2>80.83</TD></TR>
 <TR><TD><center><font size=-2>7/2</TD><TD><center><font size=-2> 13-14</TD><TD><center><font size=-2>5.19</TD><TD><center><font size=-2>6.55</TD><TD><center><font size=-2>79.13</TD></TR>
 <TR><TD><center><font size=-2>7/2</TD><TD><center><font size=-2> 12-13</TD><TD><center><font size=-2>5.61</TD><TD><center><font size=-2>6.68</TD><TD><center><font size=-2>77.02</TD></TR>
 <TR><TD><center><font size=-2>7/2</TD><TD><center><font size=-2> 11-12</TD><TD><center><font size=-2>5.81</TD><TD><center><font size=-2>7.21</TD><TD><center><font size=-2>76.13</TD></TR>
 <TR><TD><center><font size=-2>7/2</TD><TD><center><font size=-2> 10-11</TD><TD><center><font size=-2>5.12</TD><TD><center><font size=-2>6.41</TD><TD><center><font size=-2>75.65</TD></TR>
 <TR><TD><center><font size=-2>7/2</TD><TD><center><font size=-2> 9-10</TD><TD><center><font size=-2>4.25</TD><TD><center><font size=-2>5.56</TD><TD><center><font size=-2>76.28</TD></TR>
 <TR><TD><center><font size=-2>7/2</TD><TD><center><font size=-2> 8- 9</TD><TD><center><font size=-2>4.90</TD><TD><center><font size=-2>6.14</TD><TD><center><font size=-2>76.77</TD></TR>
 <TR><TD><center><font size=-2>7/2</TD><TD><center><font size=-2> 7- 8</TD><TD><center><font size=-2>2.62</TD><TD><center><font size=-2>3.24</TD><TD><center><font size=-2>78.51</TD></TR>
 <TR><TD><center><font size=-2>7/2</TD><TD><center><font size=-2> 6- 7</TD><TD><center><font size=-2>1.88</TD><TD><center><font size=-2>2.35</TD><TD><center><font size=-2>78.46</TD></TR>
 <TR><TD><center><font size=-2>7/2</TD><TD><center><font size=-2> 5- 6</TD><TD><center><font size=-2>3.57</TD><TD><center><font size=-2>5.87</TD><TD><center><font size=-2>76.32</TD></TR>
 <TR><TD><center><font size=-2>7/2</TD><TD><center><font size=-2> 4- 5</TD><TD><center><font size=-2>2.61</TD><TD><center><font size=-2>3.26</TD><TD><center><font size=-2>76.74</TD></TR>
 <TR><TD><center><font size=-2>7/2</TD><TD><center><font size=-2> 3- 4</TD><TD><center><font size=-2>3.22</TD><TD><center><font size=-2>3.78</TD><TD><center><font size=-2>71.07</TD></TR>
 <TR><TD><center><font size=-2>7/2</TD><TD><center><font size=-2> 2- 3</TD><TD><center><font size=-2>4.35</TD><TD><center><font size=-2>4.89</TD><TD><center><font size=-2>65.56</TD></TR>
 <TR><TD><center><font size=-2>7/2</TD><TD><center><font size=-2> 1- 2</TD><TD><center><font size=-2>4.64</TD><TD><center><font size=-2>5.19</TD><TD><center><font size=-2>59.39</TD></TR>
 <TR><TD><center><font size=-2>7/2</TD><TD><center><font size=-2> 0- 1</TD><TD><center><font size=-2>5.95</TD><TD><center><font size=-2>6.53</TD><TD><center><font size=-2>52.48</TD></TR>
 <TR><TD><strong><font size=-2>DATO - 2015</TD><TD><strong><font size=-2>&nbsp;Tid&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;NO<sub>2 </sub>&nbsp;&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;NO<sub>x </sub>&nbsp;&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;O<sub>3 </sub>&nbsp;&nbsp;&nbsp;</TD></TR>
 <TR><TD><center><font size=-2>6/2</TD><TD><center><font size=-2> 23-24</TD><TD><center><font size=-2>7.85</TD><TD><center><font size=-2>8.48</TD><TD><center><font size=-2>47.44</TD></TR>
 <TR><TD><center><font size=-2>6/2</TD><TD><center><font size=-2> 22-23</TD><TD><center><font size=-2>8.46</TD><TD><center><font size=-2>9.14</TD><TD><center><font size=-2>46.30</TD></TR>
 <TR><TD><center><font size=-2>6/2</TD><TD><center><font size=-2> 21-22</TD><TD><center><font size=-2>9.88</TD><TD><center><font size=-2>10.79</TD><TD><center><font size=-2>44.23</TD></TR>
 <TR><TD><center><font size=-2>6/2</TD><TD><center><font size=-2> 20-21</TD><TD><center><font size=-2>10.38</TD><TD><center><font size=-2>11.13</TD><TD><center><font size=-2>45.73</TD></TR>
 <TR><TD><center><font size=-2>6/2</TD><TD><center><font size=-2> 19-20</TD><TD><center><font size=-2>12.32</TD><TD><center><font size=-2>13.08</TD><TD><center><font size=-2>44.84</TD></TR>
 <TR><TD><center><font size=-2>6/2</TD><TD><center><font size=-2> 18-19</TD><TD><center><font size=-2>15.77</TD><TD><center><font size=-2>16.98</TD><TD><center><font size=-2>42.63</TD></TR>
 <TR><TD><center><font size=-2>6/2</TD><TD><center><font size=-2> 17-18</TD><TD><center><font size=-2>20.25</TD><TD><center><font size=-2>21.93</TD><TD><center><font size=-2>36.10</TD></TR>
 <TR><TD><center><font size=-2>6/2</TD><TD><center><font size=-2> 16-17</TD><TD><center><font size=-2>26.80</TD><TD><center><font size=-2>30.79</TD><TD><center><font size=-2>26.99</TD></TR>
 <TR><TD><center><font size=-2>6/2</TD><TD><center><font size=-2> 15-16</TD><TD><center><font size=-2>23.14</TD><TD><center><font size=-2>28.37</TD><TD><center><font size=-2>30.50</TD></TR>
 <TR><TD><center><font size=-2>6/2</TD><TD><center><font size=-2> 14-15</TD><TD><center><font size=-2>18.02</TD><TD><center><font size=-2>23.87</TD><TD><center><font size=-2>36.26</TD></TR>
 <TR><TD><center><font size=-2>6/2</TD><TD><center><font size=-2> 13-14</TD><TD><center><font size=-2>19.02</TD><TD><center><font size=-2>27.34</TD><TD><center><font size=-2>35.05</TD></TR>
 <TR><TD><center><font size=-2>6/2</TD><TD><center><font size=-2> 12-13</TD><TD><center><font size=-2>21.25</TD><TD><center><font size=-2>34.88</TD><TD><center><font size=-2>30.21</TD></TR>
 <TR><TD><center><font size=-2>6/2</TD><TD><center><font size=-2> 11-12</TD><TD><center><font size=-2>27.53</TD><TD><center><font size=-2>62.54</TD><TD><center><font size=-2>18.79</TD></TR>
 <TR><TD><center><font size=-2>6/2</TD><TD><center><font size=-2> 10-11</TD><TD><center><font size=-2>32.95</TD><TD><center><font size=-2>84.65</TD><TD><center><font size=-2>12.98</TD></TR>
 <TR><TD><center><font size=-2>6/2</TD><TD><center><font size=-2> 9-10</TD><TD><center><font size=-2>40.37</TD><TD><center><font size=-2>141.61</TD><TD><center><font size=-2>5.17</TD></TR>
 <TR><TD><center><font size=-2>6/2</TD><TD><center><font size=-2> 8- 9</TD><TD><center><font size=-2>53.50</TD><TD><center><font size=-2>234.11</TD><TD><center><font size=-2>1.69</TD></TR>
 <TR><TD><center><font size=-2>6/2</TD><TD><center><font size=-2> 7- 8</TD><TD><center><font size=-2>42.17</TD><TD><center><font size=-2>114.79</TD><TD><center><font size=-2>0.69</TD></TR>
 <TR><TD><center><font size=-2>6/2</TD><TD><center><font size=-2> 6- 7</TD><TD><center><font size=-2>36.12</TD><TD><center><font size=-2>72.21</TD><TD><center><font size=-2>0.58</TD></TR>
 <TR><TD><center><font size=-2>6/2</TD><TD><center><font size=-2> 5- 6</TD><TD><center><font size=-2>37.12</TD><TD><center><font size=-2>69.82</TD><TD><center><font size=-2>1.41</TD></TR>
 <TR><TD><center><font size=-2>6/2</TD><TD><center><font size=-2> 4- 5</TD><TD><center><font size=-2>32.56</TD><TD><center><font size=-2>39.65</TD><TD><center><font size=-2>6.16</TD></TR>
 <TR><TD><center><font size=-2>6/2</TD><TD><center><font size=-2> 3- 4</TD><TD><center><font size=-2>34.60</TD><TD><center><font size=-2>47.91</TD><TD><center><font size=-2>8.01</TD></TR>
 <TR><TD><center><font size=-2>6/2</TD><TD><center><font size=-2> 2- 3</TD><TD><center><font size=-2>28.22</TD><TD><center><font size=-2>36.85</TD><TD><center><font size=-2>9.57</TD></TR>
 <TR><TD><center><font size=-2>6/2</TD><TD><center><font size=-2> 1- 2</TD><TD><center><font size=-2>33.14</TD><TD><center><font size=-2>43.87</TD><TD><center><font size=-2>4.16</TD></TR>
 <TR><TD><center><font size=-2>6/2</TD><TD><center><font size=-2> 0- 1</TD><TD><center><font size=-2>37.79</TD><TD><center><font size=-2>53.12</TD><TD><center><font size=-2>5.65</TD></TR>
 <TR><TD><strong><font size=-2>DATO - 2015</TD><TD><strong><font size=-2>&nbsp;Tid&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;NO<sub>2 </sub>&nbsp;&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;NO<sub>x </sub>&nbsp;&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;O<sub>3 </sub>&nbsp;&nbsp;&nbsp;</TD></TR>
 <TR><TD><center><font size=-2>5/2</TD><TD><center><font size=-2> 23-24</TD><TD><center><font size=-2>36.05</TD><TD><center><font size=-2>47.86</TD><TD><center><font size=-2>7.24</TD></TR>
 <TR><TD><center><font size=-2>5/2</TD><TD><center><font size=-2> 22-23</TD><TD><center><font size=-2>40.50</TD><TD><center><font size=-2>64.61</TD><TD><center><font size=-2>5.36</TD></TR>
 <TR><TD><center><font size=-2>5/2</TD><TD><center><font size=-2> 21-22</TD><TD><center><font size=-2>40.74</TD><TD><center><font size=-2>71.77</TD><TD><center><font size=-2>5.18</TD></TR>
 <TR><TD><center><font size=-2>5/2</TD><TD><center><font size=-2> 20-21</TD><TD><center><font size=-2>41.83</TD><TD><center><font size=-2>89.95</TD><TD><center><font size=-2>7.69</TD></TR>
 <TR><TD><center><font size=-2>5/2</TD><TD><center><font size=-2> 19-20</TD><TD><center><font size=-2>50.63</TD><TD><center><font size=-2>109.22</TD><TD><center><font size=-2>2.01</TD></TR>
 <TR><TD><center><font size=-2>5/2</TD><TD><center><font size=-2> 18-19</TD><TD><center><font size=-2>50.35</TD><TD><center><font size=-2>86.67</TD><TD><center><font size=-2>2.70</TD></TR>
 <TR><TD><center><font size=-2>5/2</TD><TD><center><font size=-2> 17-18</TD><TD><center><font size=-2>47.37</TD><TD><center><font size=-2>91.05</TD><TD><center><font size=-2>4.59</TD></TR>
 <TR><TD><center><font size=-2>5/2</TD><TD><center><font size=-2> 16-17</TD><TD><center><font size=-2>27.06</TD><TD><center><font size=-2>38.92</TD><TD><center><font size=-2>22.12</TD></TR>
 <TR><TD><center><font size=-2>5/2</TD><TD><center><font size=-2> 15-16</TD><TD><center><font size=-2>20.97</TD><TD><center><font size=-2>33.81</TD><TD><center><font size=-2>28.37</TD></TR>
 <TR><TD><center><font size=-2>5/2</TD><TD><center><font size=-2> 14-15</TD><TD><center><font size=-2>23.58</TD><TD><center><font size=-2>46.80</TD><TD><center><font size=-2>26.66</TD></TR>
 <TR><TD><center><font size=-2>5/2</TD><TD><center><font size=-2> 13-14</TD><TD><center><font size=-2>17.46</TD><TD><center><font size=-2>33.90</TD><TD><center><font size=-2>34.08</TD></TR>
 <TR><TD><center><font size=-2>5/2</TD><TD><center><font size=-2> 12-13</TD><TD><center><font size=-2>11.76</TD><TD><center><font size=-2>23.94</TD><TD><center><font size=-2>39.02</TD></TR>
 <TR><TD><center><font size=-2>5/2</TD><TD><center><font size=-2> 11-12</TD><TD><center><font size=-2>11.67</TD><TD><center><font size=-2>24.57</TD><TD><center><font size=-2>39.43</TD></TR>
 <TR><TD><center><font size=-2>5/2</TD><TD><center><font size=-2> 10-11</TD><TD><center><font size=-2>19.04</TD><TD><center><font size=-2>39.47</TD><TD><center><font size=-2>32.42</TD></TR>
 <TR><TD><center><font size=-2>5/2</TD><TD><center><font size=-2> 9-10</TD><TD><center><font size=-2>28.98</TD><TD><center><font size=-2>48.80</TD><TD><center><font size=-2>25.25</TD></TR>
 <TR><TD><center><font size=-2>5/2</TD><TD><center><font size=-2> 8- 9</TD><TD><center><font size=-2>43.51</TD><TD><center><font size=-2>78.88</TD><TD><center><font size=-2>10.96</TD></TR>
 <TR><TD><center><font size=-2>5/2</TD><TD><center><font size=-2> 7- 8</TD><TD><center><font size=-2>46.93</TD><TD><center><font size=-2>83.43</TD><TD><center><font size=-2>10.49</TD></TR>
 <TR><TD><center><font size=-2>5/2</TD><TD><center><font size=-2> 6- 7</TD><TD><center><font size=-2>26.62</TD><TD><center><font size=-2>35.42</TD><TD><center><font size=-2>25.66</TD></TR>
 <TR><TD><center><font size=-2>5/2</TD><TD><center><font size=-2> 5- 6</TD><TD><center><font size=-2>9.53</TD><TD><center><font size=-2>10.63</TD><TD><center><font size=-2>42.51</TD></TR>
 <TR><TD><center><font size=-2>5/2</TD><TD><center><font size=-2> 4- 5</TD><TD><center><font size=-2>6.93</TD><TD><center><font size=-2>8.90</TD><TD><center><font size=-2>46.99</TD></TR>
 <TR><TD><center><font size=-2>5/2</TD><TD><center><font size=-2> 3- 4</TD><TD><center><font size=-2>6.56</TD><TD><center><font size=-2>7.01</TD><TD><center><font size=-2>46.34</TD></TR>
 <TR><TD><center><font size=-2>5/2</TD><TD><center><font size=-2> 2- 3</TD><TD><center><font size=-2>4.69</TD><TD><center><font size=-2>4.94</TD><TD><center><font size=-2>48.06</TD></TR>
 <TR><TD><center><font size=-2>5/2</TD><TD><center><font size=-2> 1- 2</TD><TD><center><font size=-2>4.93</TD><TD><center><font size=-2>4.94</TD><TD><center><font size=-2>48.11</TD></TR>
 <TR><TD><center><font size=-2>5/2</TD><TD><center><font size=-2> 0- 1</TD><TD><center><font size=-2>6.14</TD><TD><center><font size=-2>6.32</TD><TD><center><font size=-2>46.94</TD></TR>
 <TR><TD><strong><font size=-2>DATO - 2015</TD><TD><strong><font size=-2>&nbsp;Tid&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;NO<sub>2 </sub>&nbsp;&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;NO<sub>x </sub>&nbsp;&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;O<sub>3 </sub>&nbsp;&nbsp;&nbsp;</TD></TR>
 <TR><TD><center><font size=-2>4/2</TD><TD><center><font size=-2> 23-24</TD><TD><center><font size=-2>10.04</TD><TD><center><font size=-2>11.29</TD><TD><center><font size=-2>40.88</TD></TR>
 <TR><TD><center><font size=-2>4/2</TD><TD><center><font size=-2> 22-23</TD><TD><center><font size=-2>14.32</TD><TD><center><font size=-2>16.27</TD><TD><center><font size=-2>35.97</TD></TR>
 <TR><TD><center><font size=-2>4/2</TD><TD><center><font size=-2> 21-22</TD><TD><center><font size=-2>14.13</TD><TD><center><font size=-2>15.96</TD><TD><center><font size=-2>35.61</TD></TR>
 <TR><TD><center><font size=-2>4/2</TD><TD><center><font size=-2> 20-21</TD><TD><center><font size=-2>15.99</TD><TD><center><font size=-2>18.68</TD><TD><center><font size=-2>34.52</TD></TR>
 <TR><TD><center><font size=-2>4/2</TD><TD><center><font size=-2> 19-20</TD><TD><center><font size=-2>16.74</TD><TD><center><font size=-2>19.66</TD><TD><center><font size=-2>35.61</TD></TR>
 <TR><TD><center><font size=-2>4/2</TD><TD><center><font size=-2> 18-19</TD><TD><center><font size=-2>17.30</TD><TD><center><font size=-2>20.26</TD><TD><center><font size=-2>35.62</TD></TR>
 <TR><TD><center><font size=-2>4/2</TD><TD><center><font size=-2> 17-18</TD><TD><center><font size=-2>18.50</TD><TD><center><font size=-2>22.16</TD><TD><center><font size=-2>34.99</TD></TR>
 <TR><TD><center><font size=-2>4/2</TD><TD><center><font size=-2> 16-17</TD><TD><center><font size=-2>19.88</TD><TD><center><font size=-2>24.49</TD><TD><center><font size=-2>33.77</TD></TR>
 <TR><TD><center><font size=-2>4/2</TD><TD><center><font size=-2> 15-16</TD><TD><center><font size=-2>22.88</TD><TD><center><font size=-2>31.00</TD><TD><center><font size=-2>31.07</TD></TR>
 <TR><TD><center><font size=-2>4/2</TD><TD><center><font size=-2> 14-15</TD><TD><center><font size=-2>21.29</TD><TD><center><font size=-2>29.37</TD><TD><center><font size=-2>32.49</TD></TR>
 <TR><TD><center><font size=-2>4/2</TD><TD><center><font size=-2> 13-14</TD><TD><center><font size=-2>20.80</TD><TD><center><font size=-2>29.06</TD><TD><center><font size=-2>33.02</TD></TR>
 <TR><TD><center><font size=-2>4/2</TD><TD><center><font size=-2> 12-13</TD><TD><center><font size=-2>20.04</TD><TD><center><font size=-2>27.34</TD><TD><center><font size=-2>34.59</TD></TR>
 <TR><TD><center><font size=-2>4/2</TD><TD><center><font size=-2> 11-12</TD><TD><center><font size=-2>19.61</TD><TD><center><font size=-2>27.36</TD><TD><center><font size=-2>35.49</TD></TR>
 <TR><TD><center><font size=-2>4/2</TD><TD><center><font size=-2> 10-11</TD><TD><center><font size=-2>21.58</TD><TD><center><font size=-2>30.85</TD><TD><center><font size=-2>33.25</TD></TR>
 <TR><TD><center><font size=-2>4/2</TD><TD><center><font size=-2> 9-10</TD><TD><center><font size=-2>23.14</TD><TD><center><font size=-2>31.74</TD><TD><center><font size=-2>31.24</TD></TR>
 <TR><TD><center><font size=-2>4/2</TD><TD><center><font size=-2> 8- 9</TD><TD><center><font size=-2>21.52</TD><TD><center><font size=-2>27.25</TD><TD><center><font size=-2>33.34</TD></TR>
 <TR><TD><center><font size=-2>4/2</TD><TD><center><font size=-2> 7- 8</TD><TD><center><font size=-2>20.32</TD><TD><center><font size=-2>25.47</TD><TD><center><font size=-2>33.54</TD></TR>
 <TR><TD><center><font size=-2>4/2</TD><TD><center><font size=-2> 6- 7</TD><TD><center><font size=-2>14.21</TD><TD><center><font size=-2>16.54</TD><TD><center><font size=-2>38.16</TD></TR>
 <TR><TD><center><font size=-2>4/2</TD><TD><center><font size=-2> 5- 6</TD><TD><center><font size=-2>9.10</TD><TD><center><font size=-2>9.19</TD><TD><center><font size=-2>42.44</TD></TR>
 <TR><TD><center><font size=-2>4/2</TD><TD><center><font size=-2> 4- 5</TD><TD><center><font size=-2>12.09</TD><TD><center><font size=-2>13.08</TD><TD><center><font size=-2>37.36</TD></TR>
 <TR><TD><center><font size=-2>4/2</TD><TD><center><font size=-2> 3- 4</TD><TD><center><font size=-2>10.65</TD><TD><center><font size=-2>10.89</TD><TD><center><font size=-2>39.76</TD></TR>
 <TR><TD><center><font size=-2>4/2</TD><TD><center><font size=-2> 2- 3</TD><TD><center><font size=-2>8.70</TD><TD><center><font size=-2>8.82</TD><TD><center><font size=-2>42.16</TD></TR>
 <TR><TD><center><font size=-2>4/2</TD><TD><center><font size=-2> 1- 2</TD><TD><center><font size=-2>5.19</TD><TD><center><font size=-2>4.78</TD><TD><center><font size=-2>47.72</TD></TR>
 <TR><TD><center><font size=-2>4/2</TD><TD><center><font size=-2> 0- 1</TD><TD><center><font size=-2>5.88</TD><TD><center><font size=-2>5.63</TD><TD><center><font size=-2>46.82</TD></TR>
 <TR><TD><strong><font size=-2>DATO - 2015</TD><TD><strong><font size=-2>&nbsp;Tid&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;NO<sub>2 </sub>&nbsp;&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;NO<sub>x </sub>&nbsp;&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;O<sub>3 </sub>&nbsp;&nbsp;&nbsp;</TD></TR>
 <TR><TD><center><font size=-2>3/2</TD><TD><center><font size=-2> 23-24</TD><TD><center><font size=-2>7.08</TD><TD><center><font size=-2>7.45</TD><TD><center><font size=-2>45.36</TD></TR>
 <TR><TD><center><font size=-2>3/2</TD><TD><center><font size=-2> 22-23</TD><TD><center><font size=-2>9.65</TD><TD><center><font size=-2>10.73</TD><TD><center><font size=-2>43.43</TD></TR>
 <TR><TD><center><font size=-2>3/2</TD><TD><center><font size=-2> 21-22</TD><TD><center><font size=-2>9.64</TD><TD><center><font size=-2>11.22</TD><TD><center><font size=-2>43.82</TD></TR>
 <TR><TD><center><font size=-2>3/2</TD><TD><center><font size=-2> 20-21</TD><TD><center><font size=-2>18.53</TD><TD><center><font size=-2>21.80</TD><TD><center><font size=-2>34.98</TD></TR>
 <TR><TD><center><font size=-2>3/2</TD><TD><center><font size=-2> 19-20</TD><TD><center><font size=-2>21.61</TD><TD><center><font size=-2>25.71</TD><TD><center><font size=-2>30.86</TD></TR>
 <TR><TD><center><font size=-2>3/2</TD><TD><center><font size=-2> 18-19</TD><TD><center><font size=-2>21.56</TD><TD><center><font size=-2>25.34</TD><TD><center><font size=-2>32.22</TD></TR>
 <TR><TD><center><font size=-2>3/2</TD><TD><center><font size=-2> 17-18</TD><TD><center><font size=-2>19.43</TD><TD><center><font size=-2>23.35</TD><TD><center><font size=-2>35.18</TD></TR>
 <TR><TD><center><font size=-2>3/2</TD><TD><center><font size=-2> 16-17</TD><TD><center><font size=-2>18.70</TD><TD><center><font size=-2>22.95</TD><TD><center><font size=-2>34.70</TD></TR>
 <TR><TD><center><font size=-2>3/2</TD><TD><center><font size=-2> 15-16</TD><TD><center><font size=-2>19.44</TD><TD><center><font size=-2>25.46</TD><TD><center><font size=-2>33.02</TD></TR>
 <TR><TD><center><font size=-2>3/2</TD><TD><center><font size=-2> 14-15</TD><TD><center><font size=-2>19.21</TD><TD><center><font size=-2>27.44</TD><TD><center><font size=-2>33.36</TD></TR>
 <TR><TD><center><font size=-2>3/2</TD><TD><center><font size=-2> 13-14</TD><TD><center><font size=-2>15.01</TD><TD><center><font size=-2>23.90</TD><TD><center><font size=-2>37.24</TD></TR>
 <TR><TD><center><font size=-2>3/2</TD><TD><center><font size=-2> 12-13</TD><TD><center><font size=-2>16.08</TD><TD><center><font size=-2>24.61</TD><TD><center><font size=-2>36.07</TD></TR>
 <TR><TD><center><font size=-2>3/2</TD><TD><center><font size=-2> 11-12</TD><TD><center><font size=-2>16.59</TD><TD><center><font size=-2>24.67</TD><TD><center><font size=-2>35.83</TD></TR>
 <TR><TD><center><font size=-2>3/2</TD><TD><center><font size=-2> 10-11</TD><TD><center><font size=-2>23.27</TD><TD><center><font size=-2>35.02</TD><TD><center><font size=-2>29.71</TD></TR>
 <TR><TD><center><font size=-2>3/2</TD><TD><center><font size=-2> 9-10</TD><TD><center><font size=-2>17.49</TD><TD><center><font size=-2>25.05</TD><TD><center><font size=-2>33.10</TD></TR>
 <TR><TD><center><font size=-2>3/2</TD><TD><center><font size=-2> 8- 9</TD><TD><center><font size=-2>23.54</TD><TD><center><font size=-2>30.64</TD><TD><center><font size=-2>27.70</TD></TR>
 <TR><TD><center><font size=-2>3/2</TD><TD><center><font size=-2> 7- 8</TD><TD><center><font size=-2>24.84</TD><TD><center><font size=-2>32.84</TD><TD><center><font size=-2>27.94</TD></TR>
 <TR><TD><center><font size=-2>3/2</TD><TD><center><font size=-2> 6- 7</TD><TD><center><font size=-2>16.74</TD><TD><center><font size=-2>20.60</TD><TD><center><font size=-2>36.12</TD></TR>
 <TR><TD><center><font size=-2>3/2</TD><TD><center><font size=-2> 5- 6</TD><TD><center><font size=-2>11.37</TD><TD><center><font size=-2>13.28</TD><TD><center><font size=-2>42.48</TD></TR>
 <TR><TD><center><font size=-2>3/2</TD><TD><center><font size=-2> 4- 5</TD><TD><center><font size=-2>8.12</TD><TD><center><font size=-2>9.23</TD><TD><center><font size=-2>46.44</TD></TR>
 <TR><TD><center><font size=-2>3/2</TD><TD><center><font size=-2> 3- 4</TD><TD><center><font size=-2>3.66</TD><TD><center><font size=-2>4.16</TD><TD><center><font size=-2>53.39</TD></TR>
 <TR><TD><center><font size=-2>3/2</TD><TD><center><font size=-2> 2- 3</TD><TD><center><font size=-2>2.69</TD><TD><center><font size=-2>3.08</TD><TD><center><font size=-2>54.91</TD></TR>
 <TR><TD><center><font size=-2>3/2</TD><TD><center><font size=-2> 1- 2</TD><TD><center><font size=-2>3.35</TD><TD><center><font size=-2>3.49</TD><TD><center><font size=-2>57.56</TD></TR>
 <TR><TD><center><font size=-2>3/2</TD><TD><center><font size=-2> 0- 1</TD><TD><center><font size=-2>6.10</TD><TD><center><font size=-2>6.37</TD><TD><center><font size=-2>58.04</TD></TR>
 
 </TABLE>
 
 </BODY>
 
 
 </HTML>";
 		selection.selection = "table[width=\"275\"]";
		select@HTMLParser(selection)(res)
	};

	getData()( res ) {
		parse@HTMLParser("<HTML>
 <HEAD>
 <TITLE> Odense-R�dhus </TITLE>
 </HEAD>
 <BODY bgcolor=\"ffffff\">
 <H2>Odense-R�dhus</H2>
 Bybaggrund<HR WIDTH=100% SIZE=1>
 <font size=-1>
 <strong>Stofliste</strong>:NO<sub>2 </sub>: Kv�lstofdioxid,&nbsp;&nbsp;&nbsp;NO<sub>x </sub>: Kv�lstofoxider,&nbsp;&nbsp;&nbsp;O<sub>3 </sub>: Ozon,&nbsp;&nbsp;&nbsp;<BR>
 <HR WIDTH=100% SIZE=1>
 
 <font size=-1 color=\"000000\">Data kontrolleres automatisk - men der er ikke foretaget afsluttende kontrol
 <font size=-1 color=\"ff0000\"> - der tages derfor forbehold mht de n�jagtige v�rdier
 <P><font size=-1 color=\"000000\">
 Enheder: �g/m<sup>3</sup>, dog NO<sub>x</sub>: �g(NO<sub>2</sub>)/m<sup>3</sup><P>
 <TABLE COLSPEC=\"L20 L20 L20 L20 L20 \" BORDER=1 WIDTH=275 HEIGHT=10 CELLPADDING=1 Cellspacing=0>
 <TR><TD><strong><font size=-2>DATO - 2015</TD><TD><strong><font size=-2>&nbsp;Tid&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;NO<sub>2 </sub>&nbsp;&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;NO<sub>x </sub>&nbsp;&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;O<sub>3 </sub>&nbsp;&nbsp;&nbsp;</TD></TR>
 <TR><TD><center><font size=-2>5/3</TD><TD><center><font size=-2> 20-21</TD><TD><center><font size=-2>11.18</TD><TD><center><font size=-2>11.76</TD><TD><center><font size=-2>61.42</TD></TR>
 <TR><TD><center><font size=-2>5/3</TD><TD><center><font size=-2> 19-20</TD><TD><center><font size=-2>13.21</TD><TD><center><font size=-2>13.42</TD><TD><center><font size=-2>62.10</TD></TR>
 <TR><TD><center><font size=-2>5/3</TD><TD><center><font size=-2> 18-19</TD><TD><center><font size=-2>17.51</TD><TD><center><font size=-2>18.09</TD><TD><center><font size=-2>61.57</TD></TR>
 <TR><TD><center><font size=-2>5/3</TD><TD><center><font size=-2> 17-18</TD><TD><center><font size=-2>15.08</TD><TD><center><font size=-2>15.88</TD><TD><center><font size=-2>68.86</TD></TR>
 <TR><TD><center><font size=-2>5/3</TD><TD><center><font size=-2> 16-17</TD><TD><center><font size=-2>14.75</TD><TD><center><font size=-2>16.43</TD><TD><center><font size=-2>70.19</TD></TR>
 <TR><TD><center><font size=-2>5/3</TD><TD><center><font size=-2> 15-16</TD><TD><center><font size=-2>12.94</TD><TD><center><font size=-2>15.38</TD><TD><center><font size=-2>74.06</TD></TR>
 <TR><TD><center><font size=-2>5/3</TD><TD><center><font size=-2> 14-15</TD><TD><center><font size=-2>12.40</TD><TD><center><font size=-2>15.28</TD><TD><center><font size=-2>74.11</TD></TR>
 <TR><TD><center><font size=-2>5/3</TD><TD><center><font size=-2> 13-14</TD><TD><center><font size=-2>9.57</TD><TD><center><font size=-2>12.57</TD><TD><center><font size=-2>77.30</TD></TR>
 <TR><TD><center><font size=-2>5/3</TD><TD><center><font size=-2> 12-13</TD><TD><center><font size=-2>9.96</TD><TD><center><font size=-2>13.16</TD><TD><center><font size=-2>74.55</TD></TR>
 <TR><TD><center><font size=-2>5/3</TD><TD><center><font size=-2> 11-12</TD><TD><center><font size=-2>11.76</TD><TD><center><font size=-2>15.31</TD><TD><center><font size=-2>70.07</TD></TR>
 <TR><TD><center><font size=-2>5/3</TD><TD><center><font size=-2> 10-11</TD><TD><center><font size=-2>12.89</TD><TD><center><font size=-2>16.87</TD><TD><center><font size=-2>68.52</TD></TR>
 <TR><TD><center><font size=-2>5/3</TD><TD><center><font size=-2> 9-10</TD><TD><center><font size=-2>18.86</TD><TD><center><font size=-2>25.76</TD><TD><center><font size=-2>59.58</TD></TR>
 <TR><TD><center><font size=-2>5/3</TD><TD><center><font size=-2> 8- 9</TD><TD><center><font size=-2>29.76</TD><TD><center><font size=-2>38.35</TD><TD><center><font size=-2>50.83</TD></TR>
 <TR><TD><center><font size=-2>5/3</TD><TD><center><font size=-2> 7- 8</TD><TD><center><font size=-2>23.72</TD><TD><center><font size=-2>27.42</TD><TD><center><font size=-2>54.93</TD></TR>
 <TR><TD><center><font size=-2>5/3</TD><TD><center><font size=-2> 6- 7</TD><TD><center><font size=-2>12.14</TD><TD><center><font size=-2>13.10</TD><TD><center><font size=-2>65.02</TD></TR>
 <TR><TD><center><font size=-2>5/3</TD><TD><center><font size=-2> 5- 6</TD><TD><center><font size=-2>16.04</TD><TD><center><font size=-2>16.90</TD><TD><center><font size=-2>59.60</TD></TR>
 <TR><TD><center><font size=-2>5/3</TD><TD><center><font size=-2> 4- 5</TD><TD><center><font size=-2>6.50</TD><TD><center><font size=-2>8.77</TD><TD><center><font size=-2>67.75</TD></TR>
 <TR><TD><center><font size=-2>5/3</TD><TD><center><font size=-2> 3- 4</TD><TD><center><font size=-2>5.17</TD><TD><center><font size=-2>5.42</TD><TD><center><font size=-2>67.10</TD></TR>
 <TR><TD><center><font size=-2>5/3</TD><TD><center><font size=-2> 2- 3</TD><TD><center><font size=-2>6.44</TD><TD><center><font size=-2>6.52</TD><TD><center><font size=-2>63.84</TD></TR>
 <TR><TD><center><font size=-2>5/3</TD><TD><center><font size=-2> 1- 2</TD><TD><center><font size=-2>9.79</TD><TD><center><font size=-2>10.42</TD><TD><center><font size=-2>58.64</TD></TR>
 <TR><TD><center><font size=-2>5/3</TD><TD><center><font size=-2> 0- 1</TD><TD><center><font size=-2>9.97</TD><TD><center><font size=-2>10.47</TD><TD><center><font size=-2>56.60</TD></TR>
 <TR><TD><strong><font size=-2>DATO - 2015</TD><TD><strong><font size=-2>&nbsp;Tid&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;NO<sub>2 </sub>&nbsp;&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;NO<sub>x </sub>&nbsp;&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;O<sub>3 </sub>&nbsp;&nbsp;&nbsp;</TD></TR>
 <TR><TD><center><font size=-2>4/3</TD><TD><center><font size=-2> 23-24</TD><TD><center><font size=-2>15.05</TD><TD><center><font size=-2>15.32</TD><TD><center><font size=-2>49.06</TD></TR>
 <TR><TD><center><font size=-2>4/3</TD><TD><center><font size=-2> 22-23</TD><TD><center><font size=-2>17.81</TD><TD><center><font size=-2>18.65</TD><TD><center><font size=-2>45.83</TD></TR>
 <TR><TD><center><font size=-2>4/3</TD><TD><center><font size=-2> 21-22</TD><TD><center><font size=-2>20.34</TD><TD><center><font size=-2>20.92</TD><TD><center><font size=-2>48.03</TD></TR>
 <TR><TD><center><font size=-2>4/3</TD><TD><center><font size=-2> 20-21</TD><TD><center><font size=-2>15.14</TD><TD><center><font size=-2>15.91</TD><TD><center><font size=-2>65.48</TD></TR>
 <TR><TD><center><font size=-2>4/3</TD><TD><center><font size=-2> 19-20</TD><TD><center><font size=-2>11.36</TD><TD><center><font size=-2>12.22</TD><TD><center><font size=-2>71.04</TD></TR>
 <TR><TD><center><font size=-2>4/3</TD><TD><center><font size=-2> 18-19</TD><TD><center><font size=-2>20.87</TD><TD><center><font size=-2>21.99</TD><TD><center><font size=-2>62.71</TD></TR>
 <TR><TD><center><font size=-2>4/3</TD><TD><center><font size=-2> 17-18</TD><TD><center><font size=-2>12.19</TD><TD><center><font size=-2>12.82</TD><TD><center><font size=-2>70.40</TD></TR>
 <TR><TD><center><font size=-2>4/3</TD><TD><center><font size=-2> 16-17</TD><TD><center><font size=-2>10.52</TD><TD><center><font size=-2>11.16</TD><TD><center><font size=-2>73.62</TD></TR>
 <TR><TD><center><font size=-2>4/3</TD><TD><center><font size=-2> 15-16</TD><TD><center><font size=-2>8.97</TD><TD><center><font size=-2>10.28</TD><TD><center><font size=-2>75.65</TD></TR>
 <TR><TD><center><font size=-2>4/3</TD><TD><center><font size=-2> 14-15</TD><TD><center><font size=-2>16.61</TD><TD><center><font size=-2>18.16</TD><TD><center><font size=-2>67.62</TD></TR>
 <TR><TD><center><font size=-2>4/3</TD><TD><center><font size=-2> 13-14</TD><TD><center><font size=-2>19.77</TD><TD><center><font size=-2>23.88</TD><TD><center><font size=-2>63.08</TD></TR>
 <TR><TD><center><font size=-2>4/3</TD><TD><center><font size=-2> 12-13</TD><TD><center><font size=-2>17.82</TD><TD><center><font size=-2>20.52</TD><TD><center><font size=-2>67.92</TD></TR>
 <TR><TD><center><font size=-2>4/3</TD><TD><center><font size=-2> 11-12</TD><TD><center><font size=-2>13.02</TD><TD><center><font size=-2>14.73</TD><TD><center><font size=-2>74.49</TD></TR>
 <TR><TD><center><font size=-2>4/3</TD><TD><center><font size=-2> 10-11</TD><TD><center><font size=-2>17.53</TD><TD><center><font size=-2>22.49</TD><TD><center><font size=-2>56.12</TD></TR>
 <TR><TD><center><font size=-2>4/3</TD><TD><center><font size=-2> 9-10</TD><TD><center><font size=-2>19.79</TD><TD><center><font size=-2>22.94</TD><TD><center><font size=-2>55.42</TD></TR>
 <TR><TD><center><font size=-2>4/3</TD><TD><center><font size=-2> 8- 9</TD><TD><center><font size=-2>31.79</TD><TD><center><font size=-2>38.88</TD><TD><center><font size=-2>45.49</TD></TR>
 <TR><TD><center><font size=-2>4/3</TD><TD><center><font size=-2> 7- 8</TD><TD><center><font size=-2>38.84</TD><TD><center><font size=-2>46.81</TD><TD><center><font size=-2>37.57</TD></TR>
 <TR><TD><center><font size=-2>4/3</TD><TD><center><font size=-2> 6- 7</TD><TD><center><font size=-2>13.77</TD><TD><center><font size=-2>14.26</TD><TD><center><font size=-2>61.68</TD></TR>
 <TR><TD><center><font size=-2>4/3</TD><TD><center><font size=-2> 5- 6</TD><TD><center><font size=-2>6.41</TD><TD><center><font size=-2>5.92</TD><TD><center><font size=-2>68.96</TD></TR>
 <TR><TD><center><font size=-2>4/3</TD><TD><center><font size=-2> 4- 5</TD><TD><center><font size=-2>5.68</TD><TD><center><font size=-2>5.75</TD><TD><center><font size=-2>69.64</TD></TR>
 <TR><TD><center><font size=-2>4/3</TD><TD><center><font size=-2> 3- 4</TD><TD><center><font size=-2>5.29</TD><TD><center><font size=-2>5.33</TD><TD><center><font size=-2>72.57</TD></TR>
 <TR><TD><center><font size=-2>4/3</TD><TD><center><font size=-2> 2- 3</TD><TD><center><font size=-2>3.76</TD><TD><center><font size=-2>3.45</TD><TD><center><font size=-2>74.02</TD></TR>
 <TR><TD><center><font size=-2>4/3</TD><TD><center><font size=-2> 1- 2</TD><TD><center><font size=-2>3.09</TD><TD><center><font size=-2>2.89</TD><TD><center><font size=-2>75.00</TD></TR>
 <TR><TD><center><font size=-2>4/3</TD><TD><center><font size=-2> 0- 1</TD><TD><center><font size=-2>3.03</TD><TD><center><font size=-2>2.57</TD><TD><center><font size=-2>79.43</TD></TR>
 <TR><TD><strong><font size=-2>DATO - 2015</TD><TD><strong><font size=-2>&nbsp;Tid&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;NO<sub>2 </sub>&nbsp;&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;NO<sub>x </sub>&nbsp;&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;O<sub>3 </sub>&nbsp;&nbsp;&nbsp;</TD></TR>
 <TR><TD><center><font size=-2>3/3</TD><TD><center><font size=-2> 23-24</TD><TD><center><font size=-2>3.80</TD><TD><center><font size=-2>3.64</TD><TD><center><font size=-2>77.75</TD></TR>
 <TR><TD><center><font size=-2>3/3</TD><TD><center><font size=-2> 22-23</TD><TD><center><font size=-2>5.99</TD><TD><center><font size=-2>5.94</TD><TD><center><font size=-2>73.25</TD></TR>
 <TR><TD><center><font size=-2>3/3</TD><TD><center><font size=-2> 21-22</TD><TD><center><font size=-2>6.81</TD><TD><center><font size=-2>6.84</TD><TD><center><font size=-2>74.41</TD></TR>
 <TR><TD><center><font size=-2>3/3</TD><TD><center><font size=-2> 20-21</TD><TD><center><font size=-2>5.82</TD><TD><center><font size=-2>5.78</TD><TD><center><font size=-2>76.57</TD></TR>
 <TR><TD><center><font size=-2>3/3</TD><TD><center><font size=-2> 19-20</TD><TD><center><font size=-2>16.22</TD><TD><center><font size=-2>16.47</TD><TD><center><font size=-2>64.50</TD></TR>
 <TR><TD><center><font size=-2>3/3</TD><TD><center><font size=-2> 18-19</TD><TD><center><font size=-2>19.80</TD><TD><center><font size=-2>20.30</TD><TD><center><font size=-2>61.22</TD></TR>
 <TR><TD><center><font size=-2>3/3</TD><TD><center><font size=-2> 17-18</TD><TD><center><font size=-2>15.46</TD><TD><center><font size=-2>16.54</TD><TD><center><font size=-2>68.05</TD></TR>
 <TR><TD><center><font size=-2>3/3</TD><TD><center><font size=-2> 16-17</TD><TD><center><font size=-2>10.71</TD><TD><center><font size=-2>11.68</TD><TD><center><font size=-2>75.79</TD></TR>
 <TR><TD><center><font size=-2>3/3</TD><TD><center><font size=-2> 15-16</TD><TD><center><font size=-2>6.69</TD><TD><center><font size=-2>7.89</TD><TD><center><font size=-2>79.90</TD></TR>
 <TR><TD><center><font size=-2>3/3</TD><TD><center><font size=-2> 14-15</TD><TD><center><font size=-2>9.11</TD><TD><center><font size=-2>11.74</TD><TD><center><font size=-2>77.38</TD></TR>
 <TR><TD><center><font size=-2>3/3</TD><TD><center><font size=-2> 13-14</TD><TD><center><font size=-2>11.09</TD><TD><center><font size=-2>14.02</TD><TD><center><font size=-2>77.93</TD></TR>
 <TR><TD><center><font size=-2>3/3</TD><TD><center><font size=-2> 12-13</TD><TD><center><font size=-2>6.16</TD><TD><center><font size=-2>7.95</TD><TD><center><font size=-2>77.18</TD></TR>
 <TR><TD><center><font size=-2>3/3</TD><TD><center><font size=-2> 11-12</TD><TD><center><font size=-2>5.38</TD><TD><center><font size=-2>6.97</TD><TD><center><font size=-2>76.71</TD></TR>
 <TR><TD><center><font size=-2>3/3</TD><TD><center><font size=-2> 10-11</TD><TD><center><font size=-2>6.40</TD><TD><center><font size=-2>7.44</TD><TD><center><font size=-2>74.58</TD></TR>
 <TR><TD><center><font size=-2>3/3</TD><TD><center><font size=-2> 9-10</TD><TD><center><font size=-2>6.52</TD><TD><center><font size=-2>7.66</TD><TD><center><font size=-2>74.99</TD></TR>
 <TR><TD><center><font size=-2>3/3</TD><TD><center><font size=-2> 8- 9</TD><TD><center><font size=-2>9.48</TD><TD><center><font size=-2>11.03</TD><TD><center><font size=-2>69.29</TD></TR>
 <TR><TD><center><font size=-2>3/3</TD><TD><center><font size=-2> 7- 8</TD><TD><center><font size=-2>14.11</TD><TD><center><font size=-2>14.89</TD><TD><center><font size=-2>65.71</TD></TR>
 <TR><TD><center><font size=-2>3/3</TD><TD><center><font size=-2> 6- 7</TD><TD><center><font size=-2>8.33</TD><TD><center><font size=-2>8.55</TD><TD><center><font size=-2>73.06</TD></TR>
 <TR><TD><center><font size=-2>3/3</TD><TD><center><font size=-2> 5- 6</TD><TD><center><font size=-2>5.88</TD><TD><center><font size=-2>6.55</TD><TD><center><font size=-2>78.73</TD></TR>
 <TR><TD><center><font size=-2>3/3</TD><TD><center><font size=-2> 4- 5</TD><TD><center><font size=-2>3.70</TD><TD><center><font size=-2>3.74</TD><TD><center><font size=-2>77.17</TD></TR>
 <TR><TD><center><font size=-2>3/3</TD><TD><center><font size=-2> 3- 4</TD><TD><center><font size=-2>3.44</TD><TD><center><font size=-2>3.38</TD><TD><center><font size=-2>72.48</TD></TR>
 <TR><TD><center><font size=-2>3/3</TD><TD><center><font size=-2> 2- 3</TD><TD><center><font size=-2>3.49</TD><TD><center><font size=-2>3.37</TD><TD><center><font size=-2>75.39</TD></TR>
 <TR><TD><center><font size=-2>3/3</TD><TD><center><font size=-2> 1- 2</TD><TD><center><font size=-2>3.71</TD><TD><center><font size=-2>3.41</TD><TD><center><font size=-2>75.28</TD></TR>
 <TR><TD><center><font size=-2>3/3</TD><TD><center><font size=-2> 0- 1</TD><TD><center><font size=-2>4.40</TD><TD><center><font size=-2>4.51</TD><TD><center><font size=-2>71.71</TD></TR>
 <TR><TD><strong><font size=-2>DATO - 2015</TD><TD><strong><font size=-2>&nbsp;Tid&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;NO<sub>2 </sub>&nbsp;&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;NO<sub>x </sub>&nbsp;&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;O<sub>3 </sub>&nbsp;&nbsp;&nbsp;</TD></TR>
 <TR><TD><center><font size=-2>2/3</TD><TD><center><font size=-2> 23-24</TD><TD><center><font size=-2>4.97</TD><TD><center><font size=-2>4.69</TD><TD><center><font size=-2>72.24</TD></TR>
 <TR><TD><center><font size=-2>2/3</TD><TD><center><font size=-2> 22-23</TD><TD><center><font size=-2>4.84</TD><TD><center><font size=-2>4.81</TD><TD><center><font size=-2>77.51</TD></TR>
 <TR><TD><center><font size=-2>2/3</TD><TD><center><font size=-2> 21-22</TD><TD><center><font size=-2>5.04</TD><TD><center><font size=-2>5.18</TD><TD><center><font size=-2>81.17</TD></TR>
 <TR><TD><center><font size=-2>2/3</TD><TD><center><font size=-2> 20-21</TD><TD><center><font size=-2>8.46</TD><TD><center><font size=-2>8.41</TD><TD><center><font size=-2>76.28</TD></TR>
 <TR><TD><center><font size=-2>2/3</TD><TD><center><font size=-2> 19-20</TD><TD><center><font size=-2>6.42</TD><TD><center><font size=-2>6.62</TD><TD><center><font size=-2>81.06</TD></TR>
 <TR><TD><center><font size=-2>2/3</TD><TD><center><font size=-2> 18-19</TD><TD><center><font size=-2>7.45</TD><TD><center><font size=-2>7.69</TD><TD><center><font size=-2>79.21</TD></TR>
 <TR><TD><center><font size=-2>2/3</TD><TD><center><font size=-2> 17-18</TD><TD><center><font size=-2>9.28</TD><TD><center><font size=-2>10.00</TD><TD><center><font size=-2>76.91</TD></TR>
 <TR><TD><center><font size=-2>2/3</TD><TD><center><font size=-2> 16-17</TD><TD><center><font size=-2>13.27</TD><TD><center><font size=-2>14.34</TD><TD><center><font size=-2>72.92</TD></TR>
 <TR><TD><center><font size=-2>2/3</TD><TD><center><font size=-2> 15-16</TD><TD><center><font size=-2>9.11</TD><TD><center><font size=-2>10.32</TD><TD><center><font size=-2>79.61</TD></TR>
 <TR><TD><center><font size=-2>2/3</TD><TD><center><font size=-2> 14-15</TD><TD><center><font size=-2>7.38</TD><TD><center><font size=-2>8.54</TD><TD><center><font size=-2>79.01</TD></TR>
 <TR><TD><center><font size=-2>2/3</TD><TD><center><font size=-2> 13-14</TD><TD><center><font size=-2>5.70</TD><TD><center><font size=-2>7.02</TD><TD><center><font size=-2>78.56</TD></TR>
 <TR><TD><center><font size=-2>2/3</TD><TD><center><font size=-2> 12-13</TD><TD><center><font size=-2>7.24</TD><TD><center><font size=-2>7.96</TD><TD><center><font size=-2>76.02</TD></TR>
 <TR><TD><center><font size=-2>2/3</TD><TD><center><font size=-2> 11-12</TD><TD><center><font size=-2>6.87</TD><TD><center><font size=-2>8.63</TD><TD><center><font size=-2>76.56</TD></TR>
 <TR><TD><center><font size=-2>2/3</TD><TD><center><font size=-2> 10-11</TD><TD><center><font size=-2>11.61</TD><TD><center><font size=-2>14.09</TD><TD><center><font size=-2>71.75</TD></TR>
 <TR><TD><center><font size=-2>2/3</TD><TD><center><font size=-2> 9-10</TD><TD><center><font size=-2>13.11</TD><TD><center><font size=-2>15.36</TD><TD><center><font size=-2>71.62</TD></TR>
 <TR><TD><center><font size=-2>2/3</TD><TD><center><font size=-2> 8- 9</TD><TD><center><font size=-2>14.96</TD><TD><center><font size=-2>16.22</TD><TD><center><font size=-2>67.97</TD></TR>
 <TR><TD><center><font size=-2>2/3</TD><TD><center><font size=-2> 7- 8</TD><TD><center><font size=-2>19.97</TD><TD><center><font size=-2>21.30</TD><TD><center><font size=-2>56.18</TD></TR>
 <TR><TD><center><font size=-2>2/3</TD><TD><center><font size=-2> 6- 7</TD><TD><center><font size=-2>12.73</TD><TD><center><font size=-2>13.30</TD><TD><center><font size=-2>59.26</TD></TR>
 <TR><TD><center><font size=-2>2/3</TD><TD><center><font size=-2> 5- 6</TD><TD><center><font size=-2>9.76</TD><TD><center><font size=-2>10.08</TD><TD><center><font size=-2>59.36</TD></TR>
 <TR><TD><center><font size=-2>2/3</TD><TD><center><font size=-2> 4- 5</TD><TD><center><font size=-2>10.21</TD><TD><center><font size=-2>10.48</TD><TD><center><font size=-2>56.20</TD></TR>
 <TR><TD><center><font size=-2>2/3</TD><TD><center><font size=-2> 3- 4</TD><TD><center><font size=-2>7.87</TD><TD><center><font size=-2>7.90</TD><TD><center><font size=-2>60.35</TD></TR>
 <TR><TD><center><font size=-2>2/3</TD><TD><center><font size=-2> 2- 3</TD><TD><center><font size=-2>12.66</TD><TD><center><font size=-2>12.93</TD><TD><center><font size=-2>56.96</TD></TR>
 <TR><TD><center><font size=-2>2/3</TD><TD><center><font size=-2> 1- 2</TD><TD><center><font size=-2>13.27</TD><TD><center><font size=-2>13.39</TD><TD><center><font size=-2>60.20</TD></TR>
 <TR><TD><center><font size=-2>2/3</TD><TD><center><font size=-2> 0- 1</TD><TD><center><font size=-2>6.53</TD><TD><center><font size=-2>7.00</TD><TD><center><font size=-2>66.19</TD></TR>
 <TR><TD><strong><font size=-2>DATO - 2015</TD><TD><strong><font size=-2>&nbsp;Tid&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;NO<sub>2 </sub>&nbsp;&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;NO<sub>x </sub>&nbsp;&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;O<sub>3 </sub>&nbsp;&nbsp;&nbsp;</TD></TR>
 <TR><TD><center><font size=-2>1/3</TD><TD><center><font size=-2> 23-24</TD><TD><center><font size=-2>5.16</TD><TD><center><font size=-2>5.22</TD><TD><center><font size=-2>70.76</TD></TR>
 <TR><TD><center><font size=-2>1/3</TD><TD><center><font size=-2> 22-23</TD><TD><center><font size=-2>5.45</TD><TD><center><font size=-2>5.68</TD><TD><center><font size=-2>72.18</TD></TR>
 <TR><TD><center><font size=-2>1/3</TD><TD><center><font size=-2> 21-22</TD><TD><center><font size=-2>5.03</TD><TD><center><font size=-2>5.22</TD><TD><center><font size=-2>74.21</TD></TR>
 <TR><TD><center><font size=-2>1/3</TD><TD><center><font size=-2> 20-21</TD><TD><center><font size=-2>4.77</TD><TD><center><font size=-2>4.66</TD><TD><center><font size=-2>75.76</TD></TR>
 <TR><TD><center><font size=-2>1/3</TD><TD><center><font size=-2> 19-20</TD><TD><center><font size=-2>4.78</TD><TD><center><font size=-2>4.37</TD><TD><center><font size=-2>77.27</TD></TR>
 <TR><TD><center><font size=-2>1/3</TD><TD><center><font size=-2> 18-19</TD><TD><center><font size=-2>4.78</TD><TD><center><font size=-2>4.78</TD><TD><center><font size=-2>77.53</TD></TR>
 <TR><TD><center><font size=-2>1/3</TD><TD><center><font size=-2> 17-18</TD><TD><center><font size=-2>5.18</TD><TD><center><font size=-2>5.28</TD><TD><center><font size=-2>77.30</TD></TR>
 <TR><TD><center><font size=-2>1/3</TD><TD><center><font size=-2> 16-17</TD><TD><center><font size=-2>5.40</TD><TD><center><font size=-2>5.62</TD><TD><center><font size=-2>78.58</TD></TR>
 <TR><TD><center><font size=-2>1/3</TD><TD><center><font size=-2> 15-16</TD><TD><center><font size=-2>4.86</TD><TD><center><font size=-2>5.32</TD><TD><center><font size=-2>79.57</TD></TR>
 <TR><TD><center><font size=-2>1/3</TD><TD><center><font size=-2> 14-15</TD><TD><center><font size=-2>5.68</TD><TD><center><font size=-2>6.36</TD><TD><center><font size=-2>77.70</TD></TR>
 <TR><TD><center><font size=-2>1/3</TD><TD><center><font size=-2> 13-14</TD><TD><center><font size=-2>8.31</TD><TD><center><font size=-2>9.84</TD><TD><center><font size=-2>62.27</TD></TR>
 <TR><TD><center><font size=-2>1/3</TD><TD><center><font size=-2> 12-13</TD><TD><center><font size=-2>8.42</TD><TD><center><font size=-2>9.88</TD><TD><center><font size=-2>55.69</TD></TR>
 <TR><TD><center><font size=-2>1/3</TD><TD><center><font size=-2> 11-12</TD><TD><center><font size=-2>7.98</TD><TD><center><font size=-2>9.07</TD><TD><center><font size=-2>57.53</TD></TR>
 <TR><TD><center><font size=-2>1/3</TD><TD><center><font size=-2> 10-11</TD><TD><center><font size=-2>10.53</TD><TD><center><font size=-2>11.20</TD><TD><center><font size=-2>57.16</TD></TR>
 <TR><TD><center><font size=-2>1/3</TD><TD><center><font size=-2> 9-10</TD><TD><center><font size=-2>9.17</TD><TD><center><font size=-2>9.79</TD><TD><center><font size=-2>59.31</TD></TR>
 <TR><TD><center><font size=-2>1/3</TD><TD><center><font size=-2> 8- 9</TD><TD><center><font size=-2>7.51</TD><TD><center><font size=-2>7.62</TD><TD><center><font size=-2>60.34</TD></TR>
 <TR><TD><center><font size=-2>1/3</TD><TD><center><font size=-2> 7- 8</TD><TD><center><font size=-2>7.57</TD><TD><center><font size=-2>7.82</TD><TD><center><font size=-2>59.31</TD></TR>
 <TR><TD><center><font size=-2>1/3</TD><TD><center><font size=-2> 6- 7</TD><TD><center><font size=-2>7.98</TD><TD><center><font size=-2>7.88</TD><TD><center><font size=-2>58.79</TD></TR>
 <TR><TD><center><font size=-2>1/3</TD><TD><center><font size=-2> 5- 6</TD><TD><center><font size=-2>8.37</TD><TD><center><font size=-2>8.38</TD><TD><center><font size=-2>58.71</TD></TR>
 <TR><TD><center><font size=-2>1/3</TD><TD><center><font size=-2> 4- 5</TD><TD><center><font size=-2>8.52</TD><TD><center><font size=-2>8.48</TD><TD><center><font size=-2>58.46</TD></TR>
 <TR><TD><center><font size=-2>1/3</TD><TD><center><font size=-2> 3- 4</TD><TD><center><font size=-2>9.01</TD><TD><center><font size=-2>9.01</TD><TD><center><font size=-2>58.44</TD></TR>
 <TR><TD><center><font size=-2>1/3</TD><TD><center><font size=-2> 2- 3</TD><TD><center><font size=-2>9.76</TD><TD><center><font size=-2>9.87</TD><TD><center><font size=-2>58.53</TD></TR>
 <TR><TD><center><font size=-2>1/3</TD><TD><center><font size=-2> 1- 2</TD><TD><center><font size=-2>10.30</TD><TD><center><font size=-2>10.28</TD><TD><center><font size=-2>58.74</TD></TR>
 <TR><TD><center><font size=-2>1/3</TD><TD><center><font size=-2> 0- 1</TD><TD><center><font size=-2>11.32</TD><TD><center><font size=-2>11.38</TD><TD><center><font size=-2>57.93</TD></TR>
 <TR><TD><strong><font size=-2>DATO - 2015</TD><TD><strong><font size=-2>&nbsp;Tid&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;NO<sub>2 </sub>&nbsp;&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;NO<sub>x </sub>&nbsp;&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;O<sub>3 </sub>&nbsp;&nbsp;&nbsp;</TD></TR>
 <TR><TD><center><font size=-2>28/2</TD><TD><center><font size=-2> 23-24</TD><TD><center><font size=-2>11.17</TD><TD><center><font size=-2>11.36</TD><TD><center><font size=-2>58.85</TD></TR>
 <TR><TD><center><font size=-2>28/2</TD><TD><center><font size=-2> 22-23</TD><TD><center><font size=-2>13.71</TD><TD><center><font size=-2>13.49</TD><TD><center><font size=-2>55.95</TD></TR>
 <TR><TD><center><font size=-2>28/2</TD><TD><center><font size=-2> 21-22</TD><TD><center><font size=-2>13.99</TD><TD><center><font size=-2>13.75</TD><TD><center><font size=-2>58.18</TD></TR>
 <TR><TD><center><font size=-2>28/2</TD><TD><center><font size=-2> 20-21</TD><TD><center><font size=-2>17.90</TD><TD><center><font size=-2>17.97</TD><TD><center><font size=-2>56.25</TD></TR>
 <TR><TD><center><font size=-2>28/2</TD><TD><center><font size=-2> 19-20</TD><TD><center><font size=-2>19.68</TD><TD><center><font size=-2>19.93</TD><TD><center><font size=-2>56.34</TD></TR>
 <TR><TD><center><font size=-2>28/2</TD><TD><center><font size=-2> 18-19</TD><TD><center><font size=-2>21.37</TD><TD><center><font size=-2>21.94</TD><TD><center><font size=-2>54.90</TD></TR>
 <TR><TD><center><font size=-2>28/2</TD><TD><center><font size=-2> 17-18</TD><TD><center><font size=-2>15.37</TD><TD><center><font size=-2>16.00</TD><TD><center><font size=-2>63.81</TD></TR>
 <TR><TD><center><font size=-2>28/2</TD><TD><center><font size=-2> 16-17</TD><TD><center><font size=-2>11.38</TD><TD><center><font size=-2>12.78</TD><TD><center><font size=-2>69.48</TD></TR>
 <TR><TD><center><font size=-2>28/2</TD><TD><center><font size=-2> 15-16</TD><TD><center><font size=-2>10.13</TD><TD><center><font size=-2>11.96</TD><TD><center><font size=-2>68.08</TD></TR>
 <TR><TD><center><font size=-2>28/2</TD><TD><center><font size=-2> 14-15</TD><TD><center><font size=-2>10.42</TD><TD><center><font size=-2>12.89</TD><TD><center><font size=-2>66.08</TD></TR>
 <TR><TD><center><font size=-2>28/2</TD><TD><center><font size=-2> 13-14</TD><TD><center><font size=-2>9.19</TD><TD><center><font size=-2>11.78</TD><TD><center><font size=-2>66.38</TD></TR>
 <TR><TD><center><font size=-2>28/2</TD><TD><center><font size=-2> 12-13</TD><TD><center><font size=-2>6.99</TD><TD><center><font size=-2>9.63</TD><TD><center><font size=-2>70.57</TD></TR>
 <TR><TD><center><font size=-2>28/2</TD><TD><center><font size=-2> 11-12</TD><TD><center><font size=-2>6.53</TD><TD><center><font size=-2>8.92</TD><TD><center><font size=-2>71.53</TD></TR>
 <TR><TD><center><font size=-2>28/2</TD><TD><center><font size=-2> 10-11</TD><TD><center><font size=-2>8.89</TD><TD><center><font size=-2>11.32</TD><TD><center><font size=-2>67.56</TD></TR>
 <TR><TD><center><font size=-2>28/2</TD><TD><center><font size=-2> 9-10</TD><TD><center><font size=-2>14.23</TD><TD><center><font size=-2>16.30</TD><TD><center><font size=-2>55.02</TD></TR>
 <TR><TD><center><font size=-2>28/2</TD><TD><center><font size=-2> 8- 9</TD><TD><center><font size=-2>17.00</TD><TD><center><font size=-2>19.07</TD><TD><center><font size=-2>49.34</TD></TR>
 <TR><TD><center><font size=-2>28/2</TD><TD><center><font size=-2> 7- 8</TD><TD><center><font size=-2>18.48</TD><TD><center><font size=-2>19.83</TD><TD><center><font size=-2>43.64</TD></TR>
 <TR><TD><center><font size=-2>28/2</TD><TD><center><font size=-2> 6- 7</TD><TD><center><font size=-2>14.28</TD><TD><center><font size=-2>15.34</TD><TD><center><font size=-2>45.14</TD></TR>
 <TR><TD><center><font size=-2>28/2</TD><TD><center><font size=-2> 5- 6</TD><TD><center><font size=-2>12.99</TD><TD><center><font size=-2>13.61</TD><TD><center><font size=-2>46.22</TD></TR>
 <TR><TD><center><font size=-2>28/2</TD><TD><center><font size=-2> 4- 5</TD><TD><center><font size=-2>16.11</TD><TD><center><font size=-2>16.65</TD><TD><center><font size=-2>49.69</TD></TR>
 <TR><TD><center><font size=-2>28/2</TD><TD><center><font size=-2> 3- 4</TD><TD><center><font size=-2>10.83</TD><TD><center><font size=-2>10.78</TD><TD><center><font size=-2>61.32</TD></TR>
 <TR><TD><center><font size=-2>28/2</TD><TD><center><font size=-2> 2- 3</TD><TD><center><font size=-2>15.79</TD><TD><center><font size=-2>16.12</TD><TD><center><font size=-2>54.14</TD></TR>
 <TR><TD><center><font size=-2>28/2</TD><TD><center><font size=-2> 1- 2</TD><TD><center><font size=-2>14.57</TD><TD><center><font size=-2>15.15</TD><TD><center><font size=-2>57.62</TD></TR>
 <TR><TD><center><font size=-2>28/2</TD><TD><center><font size=-2> 0- 1</TD><TD><center><font size=-2>13.49</TD><TD><center><font size=-2>13.85</TD><TD><center><font size=-2>58.53</TD></TR>
 <TR><TD><strong><font size=-2>DATO - 2015</TD><TD><strong><font size=-2>&nbsp;Tid&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;NO<sub>2 </sub>&nbsp;&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;NO<sub>x </sub>&nbsp;&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;O<sub>3 </sub>&nbsp;&nbsp;&nbsp;</TD></TR>
 <TR><TD><center><font size=-2>27/2</TD><TD><center><font size=-2> 23-24</TD><TD><center><font size=-2>16.27</TD><TD><center><font size=-2>17.06</TD><TD><center><font size=-2>54.65</TD></TR>
 <TR><TD><center><font size=-2>27/2</TD><TD><center><font size=-2> 22-23</TD><TD><center><font size=-2>19.23</TD><TD><center><font size=-2>20.11</TD><TD><center><font size=-2>50.39</TD></TR>
 <TR><TD><center><font size=-2>27/2</TD><TD><center><font size=-2> 21-22</TD><TD><center><font size=-2>48.34</TD><TD><center><font size=-2>58.48</TD><TD><center><font size=-2>18.01</TD></TR>
 <TR><TD><center><font size=-2>27/2</TD><TD><center><font size=-2> 20-21</TD><TD><center><font size=-2>59.86</TD><TD><center><font size=-2>72.41</TD><TD><center><font size=-2>9.87</TD></TR>
 <TR><TD><center><font size=-2>27/2</TD><TD><center><font size=-2> 19-20</TD><TD><center><font size=-2>44.34</TD><TD><center><font size=-2>47.64</TD><TD><center><font size=-2>24.44</TD></TR>
 <TR><TD><center><font size=-2>27/2</TD><TD><center><font size=-2> 18-19</TD><TD><center><font size=-2>32.04</TD><TD><center><font size=-2>34.23</TD><TD><center><font size=-2>38.66</TD></TR>
 <TR><TD><center><font size=-2>27/2</TD><TD><center><font size=-2> 17-18</TD><TD><center><font size=-2>25.96</TD><TD><center><font size=-2>28.47</TD><TD><center><font size=-2>45.66</TD></TR>
 <TR><TD><center><font size=-2>27/2</TD><TD><center><font size=-2> 16-17</TD><TD><center><font size=-2>22.79</TD><TD><center><font size=-2>27.92</TD><TD><center><font size=-2>44.04</TD></TR>
 <TR><TD><center><font size=-2>27/2</TD><TD><center><font size=-2> 15-16</TD><TD><center><font size=-2>26.20</TD><TD><center><font size=-2>35.47</TD><TD><center><font size=-2>33.12</TD></TR>
 <TR><TD><center><font size=-2>27/2</TD><TD><center><font size=-2> 14-15</TD><TD><center><font size=-2>25.00</TD><TD><center><font size=-2>34.35</TD><TD><center><font size=-2>30.27</TD></TR>
 <TR><TD><center><font size=-2>27/2</TD><TD><center><font size=-2> 13-14</TD><TD><center><font size=-2>33.00</TD><TD><center><font size=-2>45.91</TD><TD><center><font size=-2>23.25</TD></TR>
 <TR><TD><center><font size=-2>27/2</TD><TD><center><font size=-2> 12-13</TD><TD><center><font size=-2>34.23</TD><TD><center><font size=-2>48.96</TD><TD><center><font size=-2>22.87</TD></TR>
 <TR><TD><center><font size=-2>27/2</TD><TD><center><font size=-2> 11-12</TD><TD><center><font size=-2>33.78</TD><TD><center><font size=-2>51.09</TD><TD><center><font size=-2>23.32</TD></TR>
 <TR><TD><center><font size=-2>27/2</TD><TD><center><font size=-2> 10-11</TD><TD><center><font size=-2>28.20</TD><TD><center><font size=-2>35.51</TD><TD><center><font size=-2>25.84</TD></TR>
 <TR><TD><center><font size=-2>27/2</TD><TD><center><font size=-2> 9-10</TD><TD><center><font size=-2>28.24</TD><TD><center><font size=-2>34.91</TD><TD><center><font size=-2>27.08</TD></TR>
 <TR><TD><center><font size=-2>27/2</TD><TD><center><font size=-2> 8- 9</TD><TD><center><font size=-2>33.40</TD><TD><center><font size=-2>39.50</TD><TD><center><font size=-2>24.68</TD></TR>
 <TR><TD><center><font size=-2>27/2</TD><TD><center><font size=-2> 7- 8</TD><TD><center><font size=-2>23.23</TD><TD><center><font size=-2>25.06</TD><TD><center><font size=-2>33.69</TD></TR>
 <TR><TD><center><font size=-2>27/2</TD><TD><center><font size=-2> 6- 7</TD><TD><center><font size=-2>11.85</TD><TD><center><font size=-2>12.68</TD><TD><center><font size=-2>44.78</TD></TR>
 <TR><TD><center><font size=-2>27/2</TD><TD><center><font size=-2> 5- 6</TD><TD><center><font size=-2>9.57</TD><TD><center><font size=-2>10.22</TD><TD><center><font size=-2>49.60</TD></TR>
 <TR><TD><center><font size=-2>27/2</TD><TD><center><font size=-2> 4- 5</TD><TD><center><font size=-2>8.03</TD><TD><center><font size=-2>8.61</TD><TD><center><font size=-2>52.98</TD></TR>
 <TR><TD><center><font size=-2>27/2</TD><TD><center><font size=-2> 3- 4</TD><TD><center><font size=-2>13.08</TD><TD><center><font size=-2>13.87</TD><TD><center><font size=-2>53.44</TD></TR>
 <TR><TD><center><font size=-2>27/2</TD><TD><center><font size=-2> 2- 3</TD><TD><center><font size=-2>12.21</TD><TD><center><font size=-2>13.12</TD><TD><center><font size=-2>55.74</TD></TR>
 <TR><TD><center><font size=-2>27/2</TD><TD><center><font size=-2> 1- 2</TD><TD><center><font size=-2>9.33</TD><TD><center><font size=-2>10.02</TD><TD><center><font size=-2>59.26</TD></TR>
 <TR><TD><center><font size=-2>27/2</TD><TD><center><font size=-2> 0- 1</TD><TD><center><font size=-2>10.27</TD><TD><center><font size=-2>10.27</TD><TD><center><font size=-2>59.48</TD></TR>
 <TR><TD><strong><font size=-2>DATO - 2015</TD><TD><strong><font size=-2>&nbsp;Tid&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;NO<sub>2 </sub>&nbsp;&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;NO<sub>x </sub>&nbsp;&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;O<sub>3 </sub>&nbsp;&nbsp;&nbsp;</TD></TR>
 <TR><TD><center><font size=-2>26/2</TD><TD><center><font size=-2> 23-24</TD><TD><center><font size=-2>10.23</TD><TD><center><font size=-2>10.71</TD><TD><center><font size=-2>61.71</TD></TR>
 <TR><TD><center><font size=-2>26/2</TD><TD><center><font size=-2> 22-23</TD><TD><center><font size=-2>9.94</TD><TD><center><font size=-2>10.44</TD><TD><center><font size=-2>65.82</TD></TR>
 <TR><TD><center><font size=-2>26/2</TD><TD><center><font size=-2> 21-22</TD><TD><center><font size=-2>10.32</TD><TD><center><font size=-2>10.42</TD><TD><center><font size=-2>67.30</TD></TR>
 <TR><TD><center><font size=-2>26/2</TD><TD><center><font size=-2> 20-21</TD><TD><center><font size=-2>10.13</TD><TD><center><font size=-2>10.26</TD><TD><center><font size=-2>67.83</TD></TR>
 <TR><TD><center><font size=-2>26/2</TD><TD><center><font size=-2> 19-20</TD><TD><center><font size=-2>11.92</TD><TD><center><font size=-2>12.16</TD><TD><center><font size=-2>64.07</TD></TR>
 <TR><TD><center><font size=-2>26/2</TD><TD><center><font size=-2> 18-19</TD><TD><center><font size=-2>16.08</TD><TD><center><font size=-2>16.67</TD><TD><center><font size=-2>55.25</TD></TR>
 <TR><TD><center><font size=-2>26/2</TD><TD><center><font size=-2> 17-18</TD><TD><center><font size=-2>13.22</TD><TD><center><font size=-2>13.94</TD><TD><center><font size=-2>56.30</TD></TR>
 <TR><TD><center><font size=-2>26/2</TD><TD><center><font size=-2> 16-17</TD><TD><center><font size=-2>13.51</TD><TD><center><font size=-2>15.12</TD><TD><center><font size=-2>55.12</TD></TR>
 <TR><TD><center><font size=-2>26/2</TD><TD><center><font size=-2> 15-16</TD><TD><center><font size=-2>15.33</TD><TD><center><font size=-2>17.78</TD><TD><center><font size=-2>50.64</TD></TR>
 <TR><TD><center><font size=-2>26/2</TD><TD><center><font size=-2> 14-15</TD><TD><center><font size=-2>16.76</TD><TD><center><font size=-2>20.96</TD><TD><center><font size=-2>45.76</TD></TR>
 <TR><TD><center><font size=-2>26/2</TD><TD><center><font size=-2> 13-14</TD><TD><center><font size=-2>15.15</TD><TD><center><font size=-2>21.16</TD><TD><center><font size=-2>42.77</TD></TR>
 <TR><TD><center><font size=-2>26/2</TD><TD><center><font size=-2> 12-13</TD><TD><center><font size=-2>15.49</TD><TD><center><font size=-2>21.39</TD><TD><center><font size=-2>38.08</TD></TR>
 <TR><TD><center><font size=-2>26/2</TD><TD><center><font size=-2> 11-12</TD><TD><center><font size=-2>17.49</TD><TD><center><font size=-2>24.38</TD><TD><center><font size=-2>36.56</TD></TR>
 <TR><TD><center><font size=-2>26/2</TD><TD><center><font size=-2> 10-11</TD><TD><center><font size=-2>15.12</TD><TD><center><font size=-2>19.51</TD><TD><center><font size=-2>46.79</TD></TR>
 <TR><TD><center><font size=-2>26/2</TD><TD><center><font size=-2> 9-10</TD><TD><center><font size=-2>15.95</TD><TD><center><font size=-2>21.94</TD><TD><center><font size=-2>46.00</TD></TR>
 <TR><TD><center><font size=-2>26/2</TD><TD><center><font size=-2> 8- 9</TD><TD><center><font size=-2>23.18</TD><TD><center><font size=-2>28.35</TD><TD><center><font size=-2>33.17</TD></TR>
 <TR><TD><center><font size=-2>26/2</TD><TD><center><font size=-2> 7- 8</TD><TD><center><font size=-2>34.40</TD><TD><center><font size=-2>41.60</TD><TD><center><font size=-2>17.90</TD></TR>
 <TR><TD><center><font size=-2>26/2</TD><TD><center><font size=-2> 6- 7</TD><TD><center><font size=-2>28.09</TD><TD><center><font size=-2>31.60</TD><TD><center><font size=-2>22.36</TD></TR>
 <TR><TD><center><font size=-2>26/2</TD><TD><center><font size=-2> 5- 6</TD><TD><center><font size=-2>20.05</TD><TD><center><font size=-2>20.92</TD><TD><center><font size=-2>30.37</TD></TR>
 <TR><TD><center><font size=-2>26/2</TD><TD><center><font size=-2> 4- 5</TD><TD><center><font size=-2>15.24</TD><TD><center><font size=-2>15.43</TD><TD><center><font size=-2>40.28</TD></TR>
 <TR><TD><center><font size=-2>26/2</TD><TD><center><font size=-2> 3- 4</TD><TD><center><font size=-2>17.02</TD><TD><center><font size=-2>17.63</TD><TD><center><font size=-2>40.32</TD></TR>
 <TR><TD><center><font size=-2>26/2</TD><TD><center><font size=-2> 2- 3</TD><TD><center><font size=-2>20.85</TD><TD><center><font size=-2>21.08</TD><TD><center><font size=-2>34.80</TD></TR>
 <TR><TD><center><font size=-2>26/2</TD><TD><center><font size=-2> 1- 2</TD><TD><center><font size=-2>18.87</TD><TD><center><font size=-2>19.07</TD><TD><center><font size=-2>40.85</TD></TR>
 <TR><TD><center><font size=-2>26/2</TD><TD><center><font size=-2> 0- 1</TD><TD><center><font size=-2>19.16</TD><TD><center><font size=-2>19.56</TD><TD><center><font size=-2>43.02</TD></TR>
 <TR><TD><strong><font size=-2>DATO - 2015</TD><TD><strong><font size=-2>&nbsp;Tid&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;NO<sub>2 </sub>&nbsp;&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;NO<sub>x </sub>&nbsp;&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;O<sub>3 </sub>&nbsp;&nbsp;&nbsp;</TD></TR>
 <TR><TD><center><font size=-2>25/2</TD><TD><center><font size=-2> 23-24</TD><TD><center><font size=-2>18.30</TD><TD><center><font size=-2>19.17</TD><TD><center><font size=-2>48.72</TD></TR>
 <TR><TD><center><font size=-2>25/2</TD><TD><center><font size=-2> 22-23</TD><TD><center><font size=-2>15.81</TD><TD><center><font size=-2>16.39</TD><TD><center><font size=-2>55.19</TD></TR>
 <TR><TD><center><font size=-2>25/2</TD><TD><center><font size=-2> 21-22</TD><TD><center><font size=-2>25.49</TD><TD><center><font size=-2>26.55</TD><TD><center><font size=-2>43.81</TD></TR>
 <TR><TD><center><font size=-2>25/2</TD><TD><center><font size=-2> 20-21</TD><TD><center><font size=-2>25.04</TD><TD><center><font size=-2>25.95</TD><TD><center><font size=-2>48.22</TD></TR>
 <TR><TD><center><font size=-2>25/2</TD><TD><center><font size=-2> 19-20</TD><TD><center><font size=-2>24.45</TD><TD><center><font size=-2>25.38</TD><TD><center><font size=-2>52.71</TD></TR>
 <TR><TD><center><font size=-2>25/2</TD><TD><center><font size=-2> 18-19</TD><TD><center><font size=-2>22.38</TD><TD><center><font size=-2>23.42</TD><TD><center><font size=-2>57.58</TD></TR>
 <TR><TD><center><font size=-2>25/2</TD><TD><center><font size=-2> 17-18</TD><TD><center><font size=-2>14.10</TD><TD><center><font size=-2>14.77</TD><TD><center><font size=-2>69.19</TD></TR>
 <TR><TD><center><font size=-2>25/2</TD><TD><center><font size=-2> 16-17</TD><TD><center><font size=-2>11.68</TD><TD><center><font size=-2>13.50</TD><TD><center><font size=-2>73.69</TD></TR>
 <TR><TD><center><font size=-2>25/2</TD><TD><center><font size=-2> 15-16</TD><TD><center><font size=-2>11.66</TD><TD><center><font size=-2>14.02</TD><TD><center><font size=-2>72.14</TD></TR>
 <TR><TD><center><font size=-2>25/2</TD><TD><center><font size=-2> 14-15</TD><TD><center><font size=-2>10.55</TD><TD><center><font size=-2>12.97</TD><TD><center><font size=-2>72.77</TD></TR>
 <TR><TD><center><font size=-2>25/2</TD><TD><center><font size=-2> 13-14</TD><TD><center><font size=-2>10.57</TD><TD><center><font size=-2>12.90</TD><TD><center><font size=-2>73.99</TD></TR>
 <TR><TD><center><font size=-2>25/2</TD><TD><center><font size=-2> 12-13</TD><TD><center><font size=-2>9.70</TD><TD><center><font size=-2>11.99</TD><TD><center><font size=-2>68.82</TD></TR>
 <TR><TD><center><font size=-2>25/2</TD><TD><center><font size=-2> 11-12</TD><TD><center><font size=-2>9.91</TD><TD><center><font size=-2>13.15</TD><TD><center><font size=-2>67.72</TD></TR>
 <TR><TD><center><font size=-2>25/2</TD><TD><center><font size=-2> 10-11</TD><TD><center><font size=-2>11.50</TD><TD><center><font size=-2>14.44</TD><TD><center><font size=-2>65.02</TD></TR>
 <TR><TD><center><font size=-2>25/2</TD><TD><center><font size=-2> 9-10</TD><TD><center><font size=-2>12.06</TD><TD><center><font size=-2>14.80</TD><TD><center><font size=-2>67.57</TD></TR>
 <TR><TD><center><font size=-2>25/2</TD><TD><center><font size=-2> 8- 9</TD><TD><center><font size=-2>18.12</TD><TD><center><font size=-2>21.93</TD><TD><center><font size=-2>53.63</TD></TR>
 <TR><TD><center><font size=-2>25/2</TD><TD><center><font size=-2> 7- 8</TD><TD><center><font size=-2>16.09</TD><TD><center><font size=-2>17.76</TD><TD><center><font size=-2>50.23</TD></TR>
 <TR><TD><center><font size=-2>25/2</TD><TD><center><font size=-2> 6- 7</TD><TD><center><font size=-2>11.48</TD><TD><center><font size=-2>12.37</TD><TD><center><font size=-2>52.79</TD></TR>
 <TR><TD><center><font size=-2>25/2</TD><TD><center><font size=-2> 5- 6</TD><TD><center><font size=-2>10.66</TD><TD><center><font size=-2>11.34</TD><TD><center><font size=-2>55.04</TD></TR>
 <TR><TD><center><font size=-2>25/2</TD><TD><center><font size=-2> 4- 5</TD><TD><center><font size=-2>8.91</TD><TD><center><font size=-2>9.23</TD><TD><center><font size=-2>55.40</TD></TR>
 <TR><TD><center><font size=-2>25/2</TD><TD><center><font size=-2> 3- 4</TD><TD><center><font size=-2>7.35</TD><TD><center><font size=-2>7.48</TD><TD><center><font size=-2>60.66</TD></TR>
 <TR><TD><center><font size=-2>25/2</TD><TD><center><font size=-2> 2- 3</TD><TD><center><font size=-2>7.65</TD><TD><center><font size=-2>8.03</TD><TD><center><font size=-2>59.84</TD></TR>
 <TR><TD><center><font size=-2>25/2</TD><TD><center><font size=-2> 1- 2</TD><TD><center><font size=-2>7.54</TD><TD><center><font size=-2>7.64</TD><TD><center><font size=-2>60.05</TD></TR>
 <TR><TD><center><font size=-2>25/2</TD><TD><center><font size=-2> 0- 1</TD><TD><center><font size=-2>7.68</TD><TD><center><font size=-2>7.95</TD><TD><center><font size=-2>62.12</TD></TR>
 <TR><TD><strong><font size=-2>DATO - 2015</TD><TD><strong><font size=-2>&nbsp;Tid&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;NO<sub>2 </sub>&nbsp;&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;NO<sub>x </sub>&nbsp;&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;O<sub>3 </sub>&nbsp;&nbsp;&nbsp;</TD></TR>
 <TR><TD><center><font size=-2>24/2</TD><TD><center><font size=-2> 23-24</TD><TD><center><font size=-2>7.91</TD><TD><center><font size=-2>8.02</TD><TD><center><font size=-2>64.30</TD></TR>
 <TR><TD><center><font size=-2>24/2</TD><TD><center><font size=-2> 22-23</TD><TD><center><font size=-2>8.13</TD><TD><center><font size=-2>8.68</TD><TD><center><font size=-2>66.57</TD></TR>
 <TR><TD><center><font size=-2>24/2</TD><TD><center><font size=-2> 21-22</TD><TD><center><font size=-2>7.96</TD><TD><center><font size=-2>8.62</TD><TD><center><font size=-2>69.73</TD></TR>
 <TR><TD><center><font size=-2>24/2</TD><TD><center><font size=-2> 20-21</TD><TD><center><font size=-2>7.76</TD><TD><center><font size=-2>8.22</TD><TD><center><font size=-2>70.78</TD></TR>
 <TR><TD><center><font size=-2>24/2</TD><TD><center><font size=-2> 19-20</TD><TD><center><font size=-2>9.25</TD><TD><center><font size=-2>9.56</TD><TD><center><font size=-2>69.24</TD></TR>
 <TR><TD><center><font size=-2>24/2</TD><TD><center><font size=-2> 18-19</TD><TD><center><font size=-2>10.84</TD><TD><center><font size=-2>11.40</TD><TD><center><font size=-2>66.80</TD></TR>
 <TR><TD><center><font size=-2>24/2</TD><TD><center><font size=-2> 17-18</TD><TD><center><font size=-2>11.49</TD><TD><center><font size=-2>12.70</TD><TD><center><font size=-2>64.09</TD></TR>
 <TR><TD><center><font size=-2>24/2</TD><TD><center><font size=-2> 16-17</TD><TD><center><font size=-2>13.43</TD><TD><center><font size=-2>15.35</TD><TD><center><font size=-2>57.60</TD></TR>
 <TR><TD><center><font size=-2>24/2</TD><TD><center><font size=-2> 15-16</TD><TD><center><font size=-2>12.82</TD><TD><center><font size=-2>14.72</TD><TD><center><font size=-2>58.83</TD></TR>
 <TR><TD><center><font size=-2>24/2</TD><TD><center><font size=-2> 14-15</TD><TD><center><font size=-2>10.13</TD><TD><center><font size=-2>11.83</TD><TD><center><font size=-2>63.75</TD></TR>
 <TR><TD><center><font size=-2>24/2</TD><TD><center><font size=-2> 13-14</TD><TD><center><font size=-2>10.57</TD><TD><center><font size=-2>13.12</TD><TD><center><font size=-2>63.82</TD></TR>
 <TR><TD><center><font size=-2>24/2</TD><TD><center><font size=-2> 12-13</TD><TD><center><font size=-2>10.70</TD><TD><center><font size=-2>12.78</TD><TD><center><font size=-2>64.10</TD></TR>
 <TR><TD><center><font size=-2>24/2</TD><TD><center><font size=-2> 11-12</TD><TD><center><font size=-2>11.00</TD><TD><center><font size=-2>13.70</TD><TD><center><font size=-2>63.54</TD></TR>
 <TR><TD><center><font size=-2>24/2</TD><TD><center><font size=-2> 10-11</TD><TD><center><font size=-2>10.28</TD><TD><center><font size=-2>12.41</TD><TD><center><font size=-2>63.74</TD></TR>
 <TR><TD><center><font size=-2>24/2</TD><TD><center><font size=-2> 9-10</TD><TD><center><font size=-2>10.19</TD><TD><center><font size=-2>12.39</TD><TD><center><font size=-2>62.77</TD></TR>
 <TR><TD><center><font size=-2>24/2</TD><TD><center><font size=-2> 8- 9</TD><TD><center><font size=-2>12.55</TD><TD><center><font size=-2>14.70</TD><TD><center><font size=-2>59.44</TD></TR>
 <TR><TD><center><font size=-2>24/2</TD><TD><center><font size=-2> 7- 8</TD><TD><center><font size=-2>12.65</TD><TD><center><font size=-2>13.99</TD><TD><center><font size=-2>57.29</TD></TR>
 <TR><TD><center><font size=-2>24/2</TD><TD><center><font size=-2> 6- 7</TD><TD><center><font size=-2>10.70</TD><TD><center><font size=-2>11.70</TD><TD><center><font size=-2>51.88</TD></TR>
 <TR><TD><center><font size=-2>24/2</TD><TD><center><font size=-2> 5- 6</TD><TD><center><font size=-2>9.85</TD><TD><center><font size=-2>10.04</TD><TD><center><font size=-2>51.06</TD></TR>
 <TR><TD><center><font size=-2>24/2</TD><TD><center><font size=-2> 4- 5</TD><TD><center><font size=-2>8.48</TD><TD><center><font size=-2>8.91</TD><TD><center><font size=-2>53.28</TD></TR>
 <TR><TD><center><font size=-2>24/2</TD><TD><center><font size=-2> 3- 4</TD><TD><center><font size=-2>10.78</TD><TD><center><font size=-2>10.96</TD><TD><center><font size=-2>49.58</TD></TR>
 <TR><TD><center><font size=-2>24/2</TD><TD><center><font size=-2> 2- 3</TD><TD><center><font size=-2>17.43</TD><TD><center><font size=-2>17.47</TD><TD><center><font size=-2>43.86</TD></TR>
 <TR><TD><center><font size=-2>24/2</TD><TD><center><font size=-2> 1- 2</TD><TD><center><font size=-2>20.02</TD><TD><center><font size=-2>20.50</TD><TD><center><font size=-2>42.02</TD></TR>
 <TR><TD><center><font size=-2>24/2</TD><TD><center><font size=-2> 0- 1</TD><TD><center><font size=-2>17.08</TD><TD><center><font size=-2>17.32</TD><TD><center><font size=-2>37.73</TD></TR>
 <TR><TD><strong><font size=-2>DATO - 2015</TD><TD><strong><font size=-2>&nbsp;Tid&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;NO<sub>2 </sub>&nbsp;&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;NO<sub>x </sub>&nbsp;&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;O<sub>3 </sub>&nbsp;&nbsp;&nbsp;</TD></TR>
 <TR><TD><center><font size=-2>23/2</TD><TD><center><font size=-2> 23-24</TD><TD><center><font size=-2>25.45</TD><TD><center><font size=-2>26.62</TD><TD><center><font size=-2>29.32</TD></TR>
 <TR><TD><center><font size=-2>23/2</TD><TD><center><font size=-2> 22-23</TD><TD><center><font size=-2>16.91</TD><TD><center><font size=-2>17.63</TD><TD><center><font size=-2>40.68</TD></TR>
 <TR><TD><center><font size=-2>23/2</TD><TD><center><font size=-2> 21-22</TD><TD><center><font size=-2>15.04</TD><TD><center><font size=-2>16.15</TD><TD><center><font size=-2>45.04</TD></TR>
 <TR><TD><center><font size=-2>23/2</TD><TD><center><font size=-2> 20-21</TD><TD><center><font size=-2>14.40</TD><TD><center><font size=-2>15.17</TD><TD><center><font size=-2>48.76</TD></TR>
 <TR><TD><center><font size=-2>23/2</TD><TD><center><font size=-2> 19-20</TD><TD><center><font size=-2>13.50</TD><TD><center><font size=-2>14.26</TD><TD><center><font size=-2>56.97</TD></TR>
 <TR><TD><center><font size=-2>23/2</TD><TD><center><font size=-2> 18-19</TD><TD><center><font size=-2>14.56</TD><TD><center><font size=-2>15.00</TD><TD><center><font size=-2>61.59</TD></TR>
 <TR><TD><center><font size=-2>23/2</TD><TD><center><font size=-2> 17-18</TD><TD><center><font size=-2>13.51</TD><TD><center><font size=-2>14.02</TD><TD><center><font size=-2>71.11</TD></TR>
 <TR><TD><center><font size=-2>23/2</TD><TD><center><font size=-2> 16-17</TD><TD><center><font size=-2>10.41</TD><TD><center><font size=-2>11.89</TD><TD><center><font size=-2>76.76</TD></TR>
 <TR><TD><center><font size=-2>23/2</TD><TD><center><font size=-2> 15-16</TD><TD><center><font size=-2>7.53</TD><TD><center><font size=-2>8.94</TD><TD><center><font size=-2>77.43</TD></TR>
 <TR><TD><center><font size=-2>23/2</TD><TD><center><font size=-2> 14-15</TD><TD><center><font size=-2>10.98</TD><TD><center><font size=-2>13.69</TD><TD><center><font size=-2>65.14</TD></TR>
 <TR><TD><center><font size=-2>23/2</TD><TD><center><font size=-2> 13-14</TD><TD><center><font size=-2>16.48</TD><TD><center><font size=-2>19.69</TD><TD><center><font size=-2>53.99</TD></TR>
 <TR><TD><center><font size=-2>23/2</TD><TD><center><font size=-2> 12-13</TD><TD><center><font size=-2>13.55</TD><TD><center><font size=-2>15.85</TD><TD><center><font size=-2>55.16</TD></TR>
 <TR><TD><center><font size=-2>23/2</TD><TD><center><font size=-2> 11-12</TD><TD><center><font size=-2>12.79</TD><TD><center><font size=-2>15.28</TD><TD><center><font size=-2>55.58</TD></TR>
 <TR><TD><center><font size=-2>23/2</TD><TD><center><font size=-2> 10-11</TD><TD><center><font size=-2>15.02</TD><TD><center><font size=-2>18.04</TD><TD><center><font size=-2>52.69</TD></TR>
 <TR><TD><center><font size=-2>23/2</TD><TD><center><font size=-2> 9-10</TD><TD><center><font size=-2>17.31</TD><TD><center><font size=-2>21.08</TD><TD><center><font size=-2>47.64</TD></TR>
 <TR><TD><center><font size=-2>23/2</TD><TD><center><font size=-2> 8- 9</TD><TD><center><font size=-2>14.11</TD><TD><center><font size=-2>16.65</TD><TD><center><font size=-2>51.61</TD></TR>
 <TR><TD><center><font size=-2>23/2</TD><TD><center><font size=-2> 7- 8</TD><TD><center><font size=-2>11.15</TD><TD><center><font size=-2>12.21</TD><TD><center><font size=-2>56.62</TD></TR>
 <TR><TD><center><font size=-2>23/2</TD><TD><center><font size=-2> 6- 7</TD><TD><center><font size=-2>8.80</TD><TD><center><font size=-2>9.66</TD><TD><center><font size=-2>59.72</TD></TR>
 <TR><TD><center><font size=-2>23/2</TD><TD><center><font size=-2> 5- 6</TD><TD><center><font size=-2>7.41</TD><TD><center><font size=-2>7.85</TD><TD><center><font size=-2>64.65</TD></TR>
 <TR><TD><center><font size=-2>23/2</TD><TD><center><font size=-2> 4- 5</TD><TD><center><font size=-2>9.35</TD><TD><center><font size=-2>10.32</TD><TD><center><font size=-2>61.42</TD></TR>
 <TR><TD><center><font size=-2>23/2</TD><TD><center><font size=-2> 3- 4</TD><TD><center><font size=-2>7.43</TD><TD><center><font size=-2>7.86</TD><TD><center><font size=-2>60.92</TD></TR>
 <TR><TD><center><font size=-2>23/2</TD><TD><center><font size=-2> 2- 3</TD><TD><center><font size=-2>6.70</TD><TD><center><font size=-2>6.54</TD><TD><center><font size=-2>63.54</TD></TR>
 <TR><TD><center><font size=-2>23/2</TD><TD><center><font size=-2> 1- 2</TD><TD><center><font size=-2>9.55</TD><TD><center><font size=-2>9.69</TD><TD><center><font size=-2>59.99</TD></TR>
 <TR><TD><center><font size=-2>23/2</TD><TD><center><font size=-2> 0- 1</TD><TD><center><font size=-2>11.47</TD><TD><center><font size=-2>11.56</TD><TD><center><font size=-2>55.94</TD></TR>
 <TR><TD><strong><font size=-2>DATO - 2015</TD><TD><strong><font size=-2>&nbsp;Tid&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;NO<sub>2 </sub>&nbsp;&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;NO<sub>x </sub>&nbsp;&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;O<sub>3 </sub>&nbsp;&nbsp;&nbsp;</TD></TR>
 <TR><TD><center><font size=-2>22/2</TD><TD><center><font size=-2> 23-24</TD><TD><center><font size=-2>11.75</TD><TD><center><font size=-2>12.02</TD><TD><center><font size=-2>60.10</TD></TR>
 <TR><TD><center><font size=-2>22/2</TD><TD><center><font size=-2> 22-23</TD><TD><center><font size=-2>11.87</TD><TD><center><font size=-2>11.99</TD><TD><center><font size=-2>60.82</TD></TR>
 <TR><TD><center><font size=-2>22/2</TD><TD><center><font size=-2> 21-22</TD><TD><center><font size=-2>10.94</TD><TD><center><font size=-2>11.25</TD><TD><center><font size=-2>58.97</TD></TR>
 <TR><TD><center><font size=-2>22/2</TD><TD><center><font size=-2> 20-21</TD><TD><center><font size=-2>13.51</TD><TD><center><font size=-2>14.03</TD><TD><center><font size=-2>61.27</TD></TR>
 <TR><TD><center><font size=-2>22/2</TD><TD><center><font size=-2> 19-20</TD><TD><center><font size=-2>9.02</TD><TD><center><font size=-2>9.45</TD><TD><center><font size=-2>67.84</TD></TR>
 <TR><TD><center><font size=-2>22/2</TD><TD><center><font size=-2> 18-19</TD><TD><center><font size=-2>8.87</TD><TD><center><font size=-2>9.37</TD><TD><center><font size=-2>68.36</TD></TR>
 <TR><TD><center><font size=-2>22/2</TD><TD><center><font size=-2> 17-18</TD><TD><center><font size=-2>4.81</TD><TD><center><font size=-2>5.17</TD><TD><center><font size=-2>75.33</TD></TR>
 <TR><TD><center><font size=-2>22/2</TD><TD><center><font size=-2> 16-17</TD><TD><center><font size=-2>3.71</TD><TD><center><font size=-2>4.10</TD><TD><center><font size=-2>77.44</TD></TR>
 <TR><TD><center><font size=-2>22/2</TD><TD><center><font size=-2> 15-16</TD><TD><center><font size=-2>3.41</TD><TD><center><font size=-2>4.15</TD><TD><center><font size=-2>77.52</TD></TR>
 <TR><TD><center><font size=-2>22/2</TD><TD><center><font size=-2> 14-15</TD><TD><center><font size=-2>3.59</TD><TD><center><font size=-2>4.03</TD><TD><center><font size=-2>77.08</TD></TR>
 <TR><TD><center><font size=-2>22/2</TD><TD><center><font size=-2> 13-14</TD><TD><center><font size=-2>3.13</TD><TD><center><font size=-2>3.98</TD><TD><center><font size=-2>78.34</TD></TR>
 <TR><TD><center><font size=-2>22/2</TD><TD><center><font size=-2> 12-13</TD><TD><center><font size=-2>4.34</TD><TD><center><font size=-2>4.96</TD><TD><center><font size=-2>75.00</TD></TR>
 <TR><TD><center><font size=-2>22/2</TD><TD><center><font size=-2> 11-12</TD><TD><center><font size=-2>4.28</TD><TD><center><font size=-2>6.03</TD><TD><center><font size=-2>75.93</TD></TR>
 <TR><TD><center><font size=-2>22/2</TD><TD><center><font size=-2> 10-11</TD><TD><center><font size=-2>3.71</TD><TD><center><font size=-2>5.07</TD><TD><center><font size=-2>76.00</TD></TR>
 <TR><TD><center><font size=-2>22/2</TD><TD><center><font size=-2> 9-10</TD><TD><center><font size=-2>6.07</TD><TD><center><font size=-2>8.01</TD><TD><center><font size=-2>71.33</TD></TR>
 <TR><TD><center><font size=-2>22/2</TD><TD><center><font size=-2> 8- 9</TD><TD><center><font size=-2>8.39</TD><TD><center><font size=-2>10.29</TD><TD><center><font size=-2>66.19</TD></TR>
 <TR><TD><center><font size=-2>22/2</TD><TD><center><font size=-2> 7- 8</TD><TD><center><font size=-2>8.37</TD><TD><center><font size=-2>9.19</TD><TD><center><font size=-2>64.21</TD></TR>
 <TR><TD><center><font size=-2>22/2</TD><TD><center><font size=-2> 6- 7</TD><TD><center><font size=-2>9.78</TD><TD><center><font size=-2>11.81</TD><TD><center><font size=-2>64.57</TD></TR>
 <TR><TD><center><font size=-2>22/2</TD><TD><center><font size=-2> 5- 6</TD><TD><center><font size=-2>6.77</TD><TD><center><font size=-2>7.46</TD><TD><center><font size=-2>67.68</TD></TR>
 <TR><TD><center><font size=-2>22/2</TD><TD><center><font size=-2> 4- 5</TD><TD><center><font size=-2>6.30</TD><TD><center><font size=-2>6.94</TD><TD><center><font size=-2>66.45</TD></TR>
 <TR><TD><center><font size=-2>22/2</TD><TD><center><font size=-2> 3- 4</TD><TD><center><font size=-2>6.99</TD><TD><center><font size=-2>7.60</TD><TD><center><font size=-2>63.88</TD></TR>
 <TR><TD><center><font size=-2>22/2</TD><TD><center><font size=-2> 2- 3</TD><TD><center><font size=-2>10.61</TD><TD><center><font size=-2>11.45</TD><TD><center><font size=-2>60.62</TD></TR>
 <TR><TD><center><font size=-2>22/2</TD><TD><center><font size=-2> 1- 2</TD><TD><center><font size=-2>8.85</TD><TD><center><font size=-2>9.57</TD><TD><center><font size=-2>62.93</TD></TR>
 <TR><TD><center><font size=-2>22/2</TD><TD><center><font size=-2> 0- 1</TD><TD><center><font size=-2>6.75</TD><TD><center><font size=-2>7.43</TD><TD><center><font size=-2>66.99</TD></TR>
 <TR><TD><strong><font size=-2>DATO - 2015</TD><TD><strong><font size=-2>&nbsp;Tid&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;NO<sub>2 </sub>&nbsp;&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;NO<sub>x </sub>&nbsp;&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;O<sub>3 </sub>&nbsp;&nbsp;&nbsp;</TD></TR>
 <TR><TD><center><font size=-2>21/2</TD><TD><center><font size=-2> 23-24</TD><TD><center><font size=-2>5.70</TD><TD><center><font size=-2>6.34</TD><TD><center><font size=-2>70.04</TD></TR>
 <TR><TD><center><font size=-2>21/2</TD><TD><center><font size=-2> 22-23</TD><TD><center><font size=-2>5.37</TD><TD><center><font size=-2>5.99</TD><TD><center><font size=-2>72.30</TD></TR>
 <TR><TD><center><font size=-2>21/2</TD><TD><center><font size=-2> 21-22</TD><TD><center><font size=-2>5.06</TD><TD><center><font size=-2>5.47</TD><TD><center><font size=-2>75.11</TD></TR>
 <TR><TD><center><font size=-2>21/2</TD><TD><center><font size=-2> 20-21</TD><TD><center><font size=-2>5.67</TD><TD><center><font size=-2>6.30</TD><TD><center><font size=-2>72.45</TD></TR>
 <TR><TD><center><font size=-2>21/2</TD><TD><center><font size=-2> 19-20</TD><TD><center><font size=-2>7.91</TD><TD><center><font size=-2>8.31</TD><TD><center><font size=-2>61.19</TD></TR>
 <TR><TD><center><font size=-2>21/2</TD><TD><center><font size=-2> 18-19</TD><TD><center><font size=-2>11.05</TD><TD><center><font size=-2>11.66</TD><TD><center><font size=-2>62.73</TD></TR>
 <TR><TD><center><font size=-2>21/2</TD><TD><center><font size=-2> 17-18</TD><TD><center><font size=-2>14.41</TD><TD><center><font size=-2>15.13</TD><TD><center><font size=-2>68.65</TD></TR>
 <TR><TD><center><font size=-2>21/2</TD><TD><center><font size=-2> 16-17</TD><TD><center><font size=-2>15.20</TD><TD><center><font size=-2>17.30</TD><TD><center><font size=-2>55.88</TD></TR>
 <TR><TD><center><font size=-2>21/2</TD><TD><center><font size=-2> 15-16</TD><TD><center><font size=-2>15.03</TD><TD><center><font size=-2>17.47</TD><TD><center><font size=-2>43.29</TD></TR>
 <TR><TD><center><font size=-2>21/2</TD><TD><center><font size=-2> 14-15</TD><TD><center><font size=-2>20.39</TD><TD><center><font size=-2>24.82</TD><TD><center><font size=-2>56.02</TD></TR>
 <TR><TD><center><font size=-2>21/2</TD><TD><center><font size=-2> 13-14</TD><TD><center><font size=-2>23.64</TD><TD><center><font size=-2>32.59</TD><TD><center><font size=-2>29.83</TD></TR>
 <TR><TD><center><font size=-2>21/2</TD><TD><center><font size=-2> 12-13</TD><TD><center><font size=-2>22.69</TD><TD><center><font size=-2>32.53</TD><TD><center><font size=-2>22.84</TD></TR>
 <TR><TD><center><font size=-2>21/2</TD><TD><center><font size=-2> 11-12</TD><TD><center><font size=-2>17.35</TD><TD><center><font size=-2>23.38</TD><TD><center><font size=-2>27.60</TD></TR>
 <TR><TD><center><font size=-2>21/2</TD><TD><center><font size=-2> 10-11</TD><TD><center><font size=-2>15.97</TD><TD><center><font size=-2>20.98</TD><TD><center><font size=-2>29.90</TD></TR>
 <TR><TD><center><font size=-2>21/2</TD><TD><center><font size=-2> 9-10</TD><TD><center><font size=-2>16.95</TD><TD><center><font size=-2>21.42</TD><TD><center><font size=-2>26.60</TD></TR>
 <TR><TD><center><font size=-2>21/2</TD><TD><center><font size=-2> 8- 9</TD><TD><center><font size=-2>18.72</TD><TD><center><font size=-2>24.20</TD><TD><center><font size=-2>22.49</TD></TR>
 <TR><TD><center><font size=-2>21/2</TD><TD><center><font size=-2> 7- 8</TD><TD><center><font size=-2>17.00</TD><TD><center><font size=-2>20.27</TD><TD><center><font size=-2>24.06</TD></TR>
 <TR><TD><center><font size=-2>21/2</TD><TD><center><font size=-2> 6- 7</TD><TD><center><font size=-2>19.80</TD><TD><center><font size=-2>22.51</TD><TD><center><font size=-2>24.16</TD></TR>
 <TR><TD><center><font size=-2>21/2</TD><TD><center><font size=-2> 5- 6</TD><TD><center><font size=-2>19.15</TD><TD><center><font size=-2>21.33</TD><TD><center><font size=-2>27.29</TD></TR>
 <TR><TD><center><font size=-2>21/2</TD><TD><center><font size=-2> 4- 5</TD><TD><center><font size=-2>12.35</TD><TD><center><font size=-2>13.65</TD><TD><center><font size=-2>34.16</TD></TR>
 <TR><TD><center><font size=-2>21/2</TD><TD><center><font size=-2> 3- 4</TD><TD><center><font size=-2>12.30</TD><TD><center><font size=-2>13.25</TD><TD><center><font size=-2>32.11</TD></TR>
 <TR><TD><center><font size=-2>21/2</TD><TD><center><font size=-2> 2- 3</TD><TD><center><font size=-2>14.13</TD><TD><center><font size=-2>15.53</TD><TD><center><font size=-2>28.64</TD></TR>
 <TR><TD><center><font size=-2>21/2</TD><TD><center><font size=-2> 1- 2</TD><TD><center><font size=-2>16.03</TD><TD><center><font size=-2>18.20</TD><TD><center><font size=-2>29.72</TD></TR>
 <TR><TD><center><font size=-2>21/2</TD><TD><center><font size=-2> 0- 1</TD><TD><center><font size=-2>12.87</TD><TD><center><font size=-2>14.21</TD><TD><center><font size=-2>35.33</TD></TR>
 <TR><TD><strong><font size=-2>DATO - 2015</TD><TD><strong><font size=-2>&nbsp;Tid&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;NO<sub>2 </sub>&nbsp;&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;NO<sub>x </sub>&nbsp;&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;O<sub>3 </sub>&nbsp;&nbsp;&nbsp;</TD></TR>
 <TR><TD><center><font size=-2>20/2</TD><TD><center><font size=-2> 23-24</TD><TD><center><font size=-2>16.12</TD><TD><center><font size=-2>17.47</TD><TD><center><font size=-2>35.70</TD></TR>
 <TR><TD><center><font size=-2>20/2</TD><TD><center><font size=-2> 22-23</TD><TD><center><font size=-2>19.75</TD><TD><center><font size=-2>21.21</TD><TD><center><font size=-2>37.91</TD></TR>
 <TR><TD><center><font size=-2>20/2</TD><TD><center><font size=-2> 21-22</TD><TD><center><font size=-2>11.74</TD><TD><center><font size=-2>12.68</TD><TD><center><font size=-2>50.80</TD></TR>
 <TR><TD><center><font size=-2>20/2</TD><TD><center><font size=-2> 20-21</TD><TD><center><font size=-2>15.90</TD><TD><center><font size=-2>16.88</TD><TD><center><font size=-2>50.30</TD></TR>
 <TR><TD><center><font size=-2>20/2</TD><TD><center><font size=-2> 19-20</TD><TD><center><font size=-2>13.15</TD><TD><center><font size=-2>13.86</TD><TD><center><font size=-2>57.20</TD></TR>
 <TR><TD><center><font size=-2>20/2</TD><TD><center><font size=-2> 18-19</TD><TD><center><font size=-2>11.00</TD><TD><center><font size=-2>11.72</TD><TD><center><font size=-2>63.70</TD></TR>
 <TR><TD><center><font size=-2>20/2</TD><TD><center><font size=-2> 17-18</TD><TD><center><font size=-2>7.83</TD><TD><center><font size=-2>8.26</TD><TD><center><font size=-2>67.22</TD></TR>
 <TR><TD><center><font size=-2>20/2</TD><TD><center><font size=-2> 16-17</TD><TD><center><font size=-2>11.66</TD><TD><center><font size=-2>12.92</TD><TD><center><font size=-2>57.88</TD></TR>
 <TR><TD><center><font size=-2>20/2</TD><TD><center><font size=-2> 15-16</TD><TD><center><font size=-2>19.31</TD><TD><center><font size=-2>21.46</TD><TD><center><font size=-2>39.95</TD></TR>
 <TR><TD><center><font size=-2>20/2</TD><TD><center><font size=-2> 14-15</TD><TD><center><font size=-2>18.00</TD><TD><center><font size=-2>21.62</TD><TD><center><font size=-2>37.41</TD></TR>
 <TR><TD><center><font size=-2>20/2</TD><TD><center><font size=-2> 13-14</TD><TD><center><font size=-2>18.43</TD><TD><center><font size=-2>22.81</TD><TD><center><font size=-2>34.98</TD></TR>
 <TR><TD><center><font size=-2>20/2</TD><TD><center><font size=-2> 12-13</TD><TD><center><font size=-2>19.82</TD><TD><center><font size=-2>25.45</TD><TD><center><font size=-2>30.71</TD></TR>
 <TR><TD><center><font size=-2>20/2</TD><TD><center><font size=-2> 11-12</TD><TD><center><font size=-2>20.35</TD><TD><center><font size=-2>26.71</TD><TD><center><font size=-2>27.70</TD></TR>
 <TR><TD><center><font size=-2>20/2</TD><TD><center><font size=-2> 10-11</TD><TD><center><font size=-2>21.35</TD><TD><center><font size=-2>27.94</TD><TD><center><font size=-2>25.00</TD></TR>
 <TR><TD><center><font size=-2>20/2</TD><TD><center><font size=-2> 9-10</TD><TD><center><font size=-2>23.19</TD><TD><center><font size=-2>27.90</TD><TD><center><font size=-2>22.59</TD></TR>
 <TR><TD><center><font size=-2>20/2</TD><TD><center><font size=-2> 8- 9</TD><TD><center><font size=-2>25.77</TD><TD><center><font size=-2>30.52</TD><TD><center><font size=-2>20.48</TD></TR>
 <TR><TD><center><font size=-2>20/2</TD><TD><center><font size=-2> 7- 8</TD><TD><center><font size=-2>24.12</TD><TD><center><font size=-2>27.09</TD><TD><center><font size=-2>23.51</TD></TR>
 <TR><TD><center><font size=-2>20/2</TD><TD><center><font size=-2> 6- 7</TD><TD><center><font size=-2>20.76</TD><TD><center><font size=-2>22.22</TD><TD><center><font size=-2>26.72</TD></TR>
 <TR><TD><center><font size=-2>20/2</TD><TD><center><font size=-2> 5- 6</TD><TD><center><font size=-2>15.40</TD><TD><center><font size=-2>15.55</TD><TD><center><font size=-2>35.32</TD></TR>
 <TR><TD><center><font size=-2>20/2</TD><TD><center><font size=-2> 4- 5</TD><TD><center><font size=-2>13.94</TD><TD><center><font size=-2>14.27</TD><TD><center><font size=-2>36.81</TD></TR>
 <TR><TD><center><font size=-2>20/2</TD><TD><center><font size=-2> 3- 4</TD><TD><center><font size=-2>13.04</TD><TD><center><font size=-2>13.14</TD><TD><center><font size=-2>37.22</TD></TR>
 <TR><TD><center><font size=-2>20/2</TD><TD><center><font size=-2> 2- 3</TD><TD><center><font size=-2>11.66</TD><TD><center><font size=-2>11.88</TD><TD><center><font size=-2>41.69</TD></TR>
 <TR><TD><center><font size=-2>20/2</TD><TD><center><font size=-2> 1- 2</TD><TD><center><font size=-2>13.92</TD><TD><center><font size=-2>14.21</TD><TD><center><font size=-2>38.65</TD></TR>
 <TR><TD><center><font size=-2>20/2</TD><TD><center><font size=-2> 0- 1</TD><TD><center><font size=-2>17.46</TD><TD><center><font size=-2>17.84</TD><TD><center><font size=-2>34.33</TD></TR>
 <TR><TD><strong><font size=-2>DATO - 2015</TD><TD><strong><font size=-2>&nbsp;Tid&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;NO<sub>2 </sub>&nbsp;&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;NO<sub>x </sub>&nbsp;&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;O<sub>3 </sub>&nbsp;&nbsp;&nbsp;</TD></TR>
 <TR><TD><center><font size=-2>19/2</TD><TD><center><font size=-2> 23-24</TD><TD><center><font size=-2>19.27</TD><TD><center><font size=-2>19.78</TD><TD><center><font size=-2>33.02</TD></TR>
 <TR><TD><center><font size=-2>19/2</TD><TD><center><font size=-2> 22-23</TD><TD><center><font size=-2>21.30</TD><TD><center><font size=-2>21.99</TD><TD><center><font size=-2>31.10</TD></TR>
 <TR><TD><center><font size=-2>19/2</TD><TD><center><font size=-2> 21-22</TD><TD><center><font size=-2>20.88</TD><TD><center><font size=-2>21.93</TD><TD><center><font size=-2>33.60</TD></TR>
 <TR><TD><center><font size=-2>19/2</TD><TD><center><font size=-2> 20-21</TD><TD><center><font size=-2>23.83</TD><TD><center><font size=-2>25.27</TD><TD><center><font size=-2>32.73</TD></TR>
 <TR><TD><center><font size=-2>19/2</TD><TD><center><font size=-2> 19-20</TD><TD><center><font size=-2>24.87</TD><TD><center><font size=-2>26.14</TD><TD><center><font size=-2>34.88</TD></TR>
 <TR><TD><center><font size=-2>19/2</TD><TD><center><font size=-2> 18-19</TD><TD><center><font size=-2>21.83</TD><TD><center><font size=-2>22.72</TD><TD><center><font size=-2>43.06</TD></TR>
 <TR><TD><center><font size=-2>19/2</TD><TD><center><font size=-2> 17-18</TD><TD><center><font size=-2>23.62</TD><TD><center><font size=-2>24.63</TD><TD><center><font size=-2>41.15</TD></TR>
 <TR><TD><center><font size=-2>19/2</TD><TD><center><font size=-2> 16-17</TD><TD><center><font size=-2>21.07</TD><TD><center><font size=-2>22.71</TD><TD><center><font size=-2>44.34</TD></TR>
 <TR><TD><center><font size=-2>19/2</TD><TD><center><font size=-2> 15-16</TD><TD><center><font size=-2>19.81</TD><TD><center><font size=-2>21.80</TD><TD><center><font size=-2>47.61</TD></TR>
 <TR><TD><center><font size=-2>19/2</TD><TD><center><font size=-2> 14-15</TD><TD><center><font size=-2>22.38</TD><TD><center><font size=-2>26.20</TD><TD><center><font size=-2>43.84</TD></TR>
 <TR><TD><center><font size=-2>19/2</TD><TD><center><font size=-2> 13-14</TD><TD><center><font size=-2>22.73</TD><TD><center><font size=-2>28.31</TD><TD><center><font size=-2>40.76</TD></TR>
 <TR><TD><center><font size=-2>19/2</TD><TD><center><font size=-2> 12-13</TD><TD><center><font size=-2>22.20</TD><TD><center><font size=-2>26.01</TD><TD><center><font size=-2>40.27</TD></TR>
 <TR><TD><center><font size=-2>19/2</TD><TD><center><font size=-2> 11-12</TD><TD><center><font size=-2>18.45</TD><TD><center><font size=-2>21.71</TD><TD><center><font size=-2>46.98</TD></TR>
 <TR><TD><center><font size=-2>19/2</TD><TD><center><font size=-2> 10-11</TD><TD><center><font size=-2>18.55</TD><TD><center><font size=-2>21.58</TD><TD><center><font size=-2>44.67</TD></TR>
 <TR><TD><center><font size=-2>19/2</TD><TD><center><font size=-2> 9-10</TD><TD><center><font size=-2>20.43</TD><TD><center><font size=-2>23.25</TD><TD><center><font size=-2>38.70</TD></TR>
 <TR><TD><center><font size=-2>19/2</TD><TD><center><font size=-2> 8- 9</TD><TD><center><font size=-2>26.10</TD><TD><center><font size=-2>29.46</TD><TD><center><font size=-2>29.22</TD></TR>
 <TR><TD><center><font size=-2>19/2</TD><TD><center><font size=-2> 7- 8</TD><TD><center><font size=-2>30.02</TD><TD><center><font size=-2>32.29</TD><TD><center><font size=-2>25.44</TD></TR>
 <TR><TD><center><font size=-2>19/2</TD><TD><center><font size=-2> 6- 7</TD><TD><center><font size=-2>34.08</TD><TD><center><font size=-2>35.67</TD><TD><center><font size=-2>20.07</TD></TR>
 <TR><TD><center><font size=-2>19/2</TD><TD><center><font size=-2> 5- 6</TD><TD><center><font size=-2>38.78</TD><TD><center><font size=-2>39.84</TD><TD><center><font size=-2>16.52</TD></TR>
 <TR><TD><center><font size=-2>19/2</TD><TD><center><font size=-2> 4- 5</TD><TD><center><font size=-2>35.39</TD><TD><center><font size=-2>35.72</TD><TD><center><font size=-2>19.13</TD></TR>
 <TR><TD><center><font size=-2>19/2</TD><TD><center><font size=-2> 3- 4</TD><TD><center><font size=-2>25.05</TD><TD><center><font size=-2>25.42</TD><TD><center><font size=-2>28.79</TD></TR>
 <TR><TD><center><font size=-2>19/2</TD><TD><center><font size=-2> 2- 3</TD><TD><center><font size=-2>14.21</TD><TD><center><font size=-2>14.38</TD><TD><center><font size=-2>44.30</TD></TR>
 <TR><TD><center><font size=-2>19/2</TD><TD><center><font size=-2> 1- 2</TD><TD><center><font size=-2>13.22</TD><TD><center><font size=-2>13.24</TD><TD><center><font size=-2>49.06</TD></TR>
 <TR><TD><center><font size=-2>19/2</TD><TD><center><font size=-2> 0- 1</TD><TD><center><font size=-2>12.85</TD><TD><center><font size=-2>12.75</TD><TD><center><font size=-2>50.59</TD></TR>
 <TR><TD><strong><font size=-2>DATO - 2015</TD><TD><strong><font size=-2>&nbsp;Tid&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;NO<sub>2 </sub>&nbsp;&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;NO<sub>x </sub>&nbsp;&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;O<sub>3 </sub>&nbsp;&nbsp;&nbsp;</TD></TR>
 <TR><TD><center><font size=-2>18/2</TD><TD><center><font size=-2> 23-24</TD><TD><center><font size=-2>15.53</TD><TD><center><font size=-2>15.94</TD><TD><center><font size=-2>48.95</TD></TR>
 <TR><TD><center><font size=-2>18/2</TD><TD><center><font size=-2> 22-23</TD><TD><center><font size=-2>17.88</TD><TD><center><font size=-2>17.96</TD><TD><center><font size=-2>48.79</TD></TR>
 <TR><TD><center><font size=-2>18/2</TD><TD><center><font size=-2> 21-22</TD><TD><center><font size=-2>19.47</TD><TD><center><font size=-2>19.60</TD><TD><center><font size=-2>47.80</TD></TR>
 <TR><TD><center><font size=-2>18/2</TD><TD><center><font size=-2> 20-21</TD><TD><center><font size=-2>21.04</TD><TD><center><font size=-2>21.37</TD><TD><center><font size=-2>47.62</TD></TR>
 <TR><TD><center><font size=-2>18/2</TD><TD><center><font size=-2> 19-20</TD><TD><center><font size=-2>20.17</TD><TD><center><font size=-2>20.36</TD><TD><center><font size=-2>50.35</TD></TR>
 <TR><TD><center><font size=-2>18/2</TD><TD><center><font size=-2> 18-19</TD><TD><center><font size=-2>22.00</TD><TD><center><font size=-2>22.34</TD><TD><center><font size=-2>49.12</TD></TR>
 <TR><TD><center><font size=-2>18/2</TD><TD><center><font size=-2> 17-18</TD><TD><center><font size=-2>23.86</TD><TD><center><font size=-2>24.15</TD><TD><center><font size=-2>46.15</TD></TR>
 <TR><TD><center><font size=-2>18/2</TD><TD><center><font size=-2> 16-17</TD><TD><center><font size=-2>18.20</TD><TD><center><font size=-2>19.04</TD><TD><center><font size=-2>52.86</TD></TR>
 <TR><TD><center><font size=-2>18/2</TD><TD><center><font size=-2> 15-16</TD><TD><center><font size=-2>15.16</TD><TD><center><font size=-2>16.76</TD><TD><center><font size=-2>56.98</TD></TR>
 <TR><TD><center><font size=-2>18/2</TD><TD><center><font size=-2> 14-15</TD><TD><center><font size=-2>13.08</TD><TD><center><font size=-2>15.38</TD><TD><center><font size=-2>57.32</TD></TR>
 <TR><TD><center><font size=-2>18/2</TD><TD><center><font size=-2> 13-14</TD><TD><center><font size=-2>12.12</TD><TD><center><font size=-2>16.67</TD><TD><center><font size=-2>56.78</TD></TR>
 <TR><TD><center><font size=-2>18/2</TD><TD><center><font size=-2> 12-13</TD><TD><center><font size=-2>11.05</TD><TD><center><font size=-2>15.70</TD><TD><center><font size=-2>55.77</TD></TR>
 <TR><TD><center><font size=-2>18/2</TD><TD><center><font size=-2> 11-12</TD><TD><center><font size=-2>11.58</TD><TD><center><font size=-2>17.03</TD><TD><center><font size=-2>51.25</TD></TR>
 <TR><TD><center><font size=-2>18/2</TD><TD><center><font size=-2> 10-11</TD><TD><center><font size=-2>12.38</TD><TD><center><font size=-2>17.00</TD><TD><center><font size=-2>48.60</TD></TR>
 <TR><TD><center><font size=-2>18/2</TD><TD><center><font size=-2> 9-10</TD><TD><center><font size=-2>15.29</TD><TD><center><font size=-2>20.13</TD><TD><center><font size=-2>41.55</TD></TR>
 <TR><TD><center><font size=-2>18/2</TD><TD><center><font size=-2> 8- 9</TD><TD><center><font size=-2>17.48</TD><TD><center><font size=-2>20.49</TD><TD><center><font size=-2>41.59</TD></TR>
 <TR><TD><center><font size=-2>18/2</TD><TD><center><font size=-2> 7- 8</TD><TD><center><font size=-2>15.49</TD><TD><center><font size=-2>16.68</TD><TD><center><font size=-2>46.07</TD></TR>
 <TR><TD><center><font size=-2>18/2</TD><TD><center><font size=-2> 6- 7</TD><TD><center><font size=-2>7.90</TD><TD><center><font size=-2>8.32</TD><TD><center><font size=-2>57.57</TD></TR>
 <TR><TD><center><font size=-2>18/2</TD><TD><center><font size=-2> 5- 6</TD><TD><center><font size=-2>4.04</TD><TD><center><font size=-2>3.94</TD><TD><center><font size=-2>63.02</TD></TR>
 <TR><TD><center><font size=-2>18/2</TD><TD><center><font size=-2> 4- 5</TD><TD><center><font size=-2>2.93</TD><TD><center><font size=-2>3.14</TD><TD><center><font size=-2>64.52</TD></TR>
 <TR><TD><center><font size=-2>18/2</TD><TD><center><font size=-2> 3- 4</TD><TD><center><font size=-2>2.85</TD><TD><center><font size=-2>2.68</TD><TD><center><font size=-2>66.39</TD></TR>
 <TR><TD><center><font size=-2>18/2</TD><TD><center><font size=-2> 2- 3</TD><TD><center><font size=-2>3.28</TD><TD><center><font size=-2>3.29</TD><TD><center><font size=-2>67.46</TD></TR>
 <TR><TD><center><font size=-2>18/2</TD><TD><center><font size=-2> 1- 2</TD><TD><center><font size=-2>3.30</TD><TD><center><font size=-2>2.94</TD><TD><center><font size=-2>68.48</TD></TR>
 <TR><TD><center><font size=-2>18/2</TD><TD><center><font size=-2> 0- 1</TD><TD><center><font size=-2>3.57</TD><TD><center><font size=-2>3.46</TD><TD><center><font size=-2>68.79</TD></TR>
 <TR><TD><strong><font size=-2>DATO - 2015</TD><TD><strong><font size=-2>&nbsp;Tid&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;NO<sub>2 </sub>&nbsp;&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;NO<sub>x </sub>&nbsp;&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;O<sub>3 </sub>&nbsp;&nbsp;&nbsp;</TD></TR>
 <TR><TD><center><font size=-2>17/2</TD><TD><center><font size=-2> 23-24</TD><TD><center><font size=-2>5.25</TD><TD><center><font size=-2>5.19</TD><TD><center><font size=-2>66.08</TD></TR>
 <TR><TD><center><font size=-2>17/2</TD><TD><center><font size=-2> 22-23</TD><TD><center><font size=-2>7.46</TD><TD><center><font size=-2>7.82</TD><TD><center><font size=-2>64.14</TD></TR>
 <TR><TD><center><font size=-2>17/2</TD><TD><center><font size=-2> 21-22</TD><TD><center><font size=-2>17.49</TD><TD><center><font size=-2>18.07</TD><TD><center><font size=-2>43.55</TD></TR>
 <TR><TD><center><font size=-2>17/2</TD><TD><center><font size=-2> 20-21</TD><TD><center><font size=-2>29.13</TD><TD><center><font size=-2>30.91</TD><TD><center><font size=-2>22.51</TD></TR>
 <TR><TD><center><font size=-2>17/2</TD><TD><center><font size=-2> 19-20</TD><TD><center><font size=-2>32.92</TD><TD><center><font size=-2>34.66</TD><TD><center><font size=-2>17.19</TD></TR>
 <TR><TD><center><font size=-2>17/2</TD><TD><center><font size=-2> 18-19</TD><TD><center><font size=-2>36.39</TD><TD><center><font size=-2>40.65</TD><TD><center><font size=-2>9.10</TD></TR>
 <TR><TD><center><font size=-2>17/2</TD><TD><center><font size=-2> 17-18</TD><TD><center><font size=-2>34.40</TD><TD><center><font size=-2>42.94</TD><TD><center><font size=-2>5.55</TD></TR>
 <TR><TD><center><font size=-2>17/2</TD><TD><center><font size=-2> 16-17</TD><TD><center><font size=-2>33.44</TD><TD><center><font size=-2>46.35</TD><TD><center><font size=-2>8.39</TD></TR>
 <TR><TD><center><font size=-2>17/2</TD><TD><center><font size=-2> 15-16</TD><TD><center><font size=-2>28.75</TD><TD><center><font size=-2>36.28</TD><TD><center><font size=-2>14.07</TD></TR>
 <TR><TD><center><font size=-2>17/2</TD><TD><center><font size=-2> 14-15</TD><TD><center><font size=-2>25.57</TD><TD><center><font size=-2>34.12</TD><TD><center><font size=-2>20.25</TD></TR>
 <TR><TD><center><font size=-2>17/2</TD><TD><center><font size=-2> 13-14</TD><TD><center><font size=-2>20.76</TD><TD><center><font size=-2>31.59</TD><TD><center><font size=-2>24.36</TD></TR>
 <TR><TD><center><font size=-2>17/2</TD><TD><center><font size=-2> 12-13</TD><TD><center><font size=-2>17.58</TD><TD><center><font size=-2>24.04</TD><TD><center><font size=-2>25.15</TD></TR>
 <TR><TD><center><font size=-2>17/2</TD><TD><center><font size=-2> 11-12</TD><TD><center><font size=-2>16.61</TD><TD><center><font size=-2>21.48</TD><TD><center><font size=-2>28.34</TD></TR>
 <TR><TD><center><font size=-2>17/2</TD><TD><center><font size=-2> 10-11</TD><TD><center><font size=-2>16.25</TD><TD><center><font size=-2>21.65</TD><TD><center><font size=-2>29.18</TD></TR>
 <TR><TD><center><font size=-2>17/2</TD><TD><center><font size=-2> 9-10</TD><TD><center><font size=-2>18.06</TD><TD><center><font size=-2>22.73</TD><TD><center><font size=-2>27.73</TD></TR>
 <TR><TD><center><font size=-2>17/2</TD><TD><center><font size=-2> 8- 9</TD><TD><center><font size=-2>21.87</TD><TD><center><font size=-2>25.86</TD><TD><center><font size=-2>26.26</TD></TR>
 <TR><TD><center><font size=-2>17/2</TD><TD><center><font size=-2> 7- 8</TD><TD><center><font size=-2>18.66</TD><TD><center><font size=-2>20.12</TD><TD><center><font size=-2>30.29</TD></TR>
 <TR><TD><center><font size=-2>17/2</TD><TD><center><font size=-2> 6- 7</TD><TD><center><font size=-2>15.64</TD><TD><center><font size=-2>17.54</TD><TD><center><font size=-2>34.28</TD></TR>
 <TR><TD><center><font size=-2>17/2</TD><TD><center><font size=-2> 5- 6</TD><TD><center><font size=-2>8.70</TD><TD><center><font size=-2>9.16</TD><TD><center><font size=-2>42.15</TD></TR>
 <TR><TD><center><font size=-2>17/2</TD><TD><center><font size=-2> 4- 5</TD><TD><center><font size=-2>7.67</TD><TD><center><font size=-2>8.10</TD><TD><center><font size=-2>44.21</TD></TR>
 <TR><TD><center><font size=-2>17/2</TD><TD><center><font size=-2> 3- 4</TD><TD><center><font size=-2>7.57</TD><TD><center><font size=-2>8.18</TD><TD><center><font size=-2>45.12</TD></TR>
 <TR><TD><center><font size=-2>17/2</TD><TD><center><font size=-2> 2- 3</TD><TD><center><font size=-2>7.37</TD><TD><center><font size=-2>7.99</TD><TD><center><font size=-2>47.06</TD></TR>
 <TR><TD><center><font size=-2>17/2</TD><TD><center><font size=-2> 1- 2</TD><TD><center><font size=-2>7.43</TD><TD><center><font size=-2>8.16</TD><TD><center><font size=-2>47.89</TD></TR>
 <TR><TD><center><font size=-2>17/2</TD><TD><center><font size=-2> 0- 1</TD><TD><center><font size=-2>6.99</TD><TD><center><font size=-2>7.23</TD><TD><center><font size=-2>50.09</TD></TR>
 <TR><TD><strong><font size=-2>DATO - 2015</TD><TD><strong><font size=-2>&nbsp;Tid&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;NO<sub>2 </sub>&nbsp;&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;NO<sub>x </sub>&nbsp;&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;O<sub>3 </sub>&nbsp;&nbsp;&nbsp;</TD></TR>
 <TR><TD><center><font size=-2>16/2</TD><TD><center><font size=-2> 23-24</TD><TD><center><font size=-2>7.01</TD><TD><center><font size=-2>7.44</TD><TD><center><font size=-2>51.02</TD></TR>
 <TR><TD><center><font size=-2>16/2</TD><TD><center><font size=-2> 22-23</TD><TD><center><font size=-2>7.98</TD><TD><center><font size=-2>8.61</TD><TD><center><font size=-2>50.64</TD></TR>
 <TR><TD><center><font size=-2>16/2</TD><TD><center><font size=-2> 21-22</TD><TD><center><font size=-2>7.70</TD><TD><center><font size=-2>8.46</TD><TD><center><font size=-2>53.24</TD></TR>
 <TR><TD><center><font size=-2>16/2</TD><TD><center><font size=-2> 20-21</TD><TD><center><font size=-2>9.24</TD><TD><center><font size=-2>9.87</TD><TD><center><font size=-2>51.74</TD></TR>
 <TR><TD><center><font size=-2>16/2</TD><TD><center><font size=-2> 19-20</TD><TD><center><font size=-2>10.78</TD><TD><center><font size=-2>11.36</TD><TD><center><font size=-2>52.21</TD></TR>
 <TR><TD><center><font size=-2>16/2</TD><TD><center><font size=-2> 18-19</TD><TD><center><font size=-2>12.15</TD><TD><center><font size=-2>13.05</TD><TD><center><font size=-2>54.88</TD></TR>
 <TR><TD><center><font size=-2>16/2</TD><TD><center><font size=-2> 17-18</TD><TD><center><font size=-2>12.62</TD><TD><center><font size=-2>13.56</TD><TD><center><font size=-2>55.57</TD></TR>
 <TR><TD><center><font size=-2>16/2</TD><TD><center><font size=-2> 16-17</TD><TD><center><font size=-2>13.99</TD><TD><center><font size=-2>15.09</TD><TD><center><font size=-2>55.72</TD></TR>
 <TR><TD><center><font size=-2>16/2</TD><TD><center><font size=-2> 15-16</TD><TD><center><font size=-2>13.35</TD><TD><center><font size=-2>14.39</TD><TD><center><font size=-2>55.03</TD></TR>
 <TR><TD><center><font size=-2>16/2</TD><TD><center><font size=-2> 14-15</TD><TD><center><font size=-2>11.76</TD><TD><center><font size=-2>13.82</TD><TD><center><font size=-2>55.30</TD></TR>
 <TR><TD><center><font size=-2>16/2</TD><TD><center><font size=-2> 13-14</TD><TD><center><font size=-2>9.77</TD><TD><center><font size=-2>11.43</TD><TD><center><font size=-2>56.85</TD></TR>
 <TR><TD><center><font size=-2>16/2</TD><TD><center><font size=-2> 12-13</TD><TD><center><font size=-2>9.73</TD><TD><center><font size=-2>11.47</TD><TD><center><font size=-2>57.03</TD></TR>
 <TR><TD><center><font size=-2>16/2</TD><TD><center><font size=-2> 11-12</TD><TD><center><font size=-2>8.39</TD><TD><center><font size=-2>9.98</TD><TD><center><font size=-2>59.78</TD></TR>
 <TR><TD><center><font size=-2>16/2</TD><TD><center><font size=-2> 10-11</TD><TD><center><font size=-2>9.98</TD><TD><center><font size=-2>11.61</TD><TD><center><font size=-2>60.84</TD></TR>
 <TR><TD><center><font size=-2>16/2</TD><TD><center><font size=-2> 9-10</TD><TD><center><font size=-2>9.45</TD><TD><center><font size=-2>11.66</TD><TD><center><font size=-2>61.40</TD></TR>
 <TR><TD><center><font size=-2>16/2</TD><TD><center><font size=-2> 8- 9</TD><TD><center><font size=-2>10.34</TD><TD><center><font size=-2>12.91</TD><TD><center><font size=-2>62.29</TD></TR>
 <TR><TD><center><font size=-2>16/2</TD><TD><center><font size=-2> 7- 8</TD><TD><center><font size=-2>11.41</TD><TD><center><font size=-2>14.15</TD><TD><center><font size=-2>60.21</TD></TR>
 <TR><TD><center><font size=-2>16/2</TD><TD><center><font size=-2> 6- 7</TD><TD><center><font size=-2>9.38</TD><TD><center><font size=-2>11.70</TD><TD><center><font size=-2>59.70</TD></TR>
 <TR><TD><center><font size=-2>16/2</TD><TD><center><font size=-2> 5- 6</TD><TD><center><font size=-2>6.90</TD><TD><center><font size=-2>8.05</TD><TD><center><font size=-2>63.92</TD></TR>
 <TR><TD><center><font size=-2>16/2</TD><TD><center><font size=-2> 4- 5</TD><TD><center><font size=-2>4.26</TD><TD><center><font size=-2>4.78</TD><TD><center><font size=-2>70.20</TD></TR>
 <TR><TD><center><font size=-2>16/2</TD><TD><center><font size=-2> 3- 4</TD><TD><center><font size=-2>4.49</TD><TD><center><font size=-2>5.08</TD><TD><center><font size=-2>73.94</TD></TR>
 <TR><TD><center><font size=-2>16/2</TD><TD><center><font size=-2> 2- 3</TD><TD><center><font size=-2>3.95</TD><TD><center><font size=-2>4.41</TD><TD><center><font size=-2>79.06</TD></TR>
 <TR><TD><center><font size=-2>16/2</TD><TD><center><font size=-2> 1- 2</TD><TD><center><font size=-2>4.18</TD><TD><center><font size=-2>4.75</TD><TD><center><font size=-2>76.84</TD></TR>
 <TR><TD><center><font size=-2>16/2</TD><TD><center><font size=-2> 0- 1</TD><TD><center><font size=-2>4.05</TD><TD><center><font size=-2>4.27</TD><TD><center><font size=-2>76.94</TD></TR>
 <TR><TD><strong><font size=-2>DATO - 2015</TD><TD><strong><font size=-2>&nbsp;Tid&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;NO<sub>2 </sub>&nbsp;&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;NO<sub>x </sub>&nbsp;&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;O<sub>3 </sub>&nbsp;&nbsp;&nbsp;</TD></TR>
 <TR><TD><center><font size=-2>15/2</TD><TD><center><font size=-2> 23-24</TD><TD><center><font size=-2>4.30</TD><TD><center><font size=-2>5.18</TD><TD><center><font size=-2>76.39</TD></TR>
 <TR><TD><center><font size=-2>15/2</TD><TD><center><font size=-2> 22-23</TD><TD><center><font size=-2>5.58</TD><TD><center><font size=-2>6.40</TD><TD><center><font size=-2>76.24</TD></TR>
 <TR><TD><center><font size=-2>15/2</TD><TD><center><font size=-2> 21-22</TD><TD><center><font size=-2>5.91</TD><TD><center><font size=-2>6.97</TD><TD><center><font size=-2>78.24</TD></TR>
 <TR><TD><center><font size=-2>15/2</TD><TD><center><font size=-2> 20-21</TD><TD><center><font size=-2>6.25</TD><TD><center><font size=-2>6.99</TD><TD><center><font size=-2>80.91</TD></TR>
 <TR><TD><center><font size=-2>15/2</TD><TD><center><font size=-2> 19-20</TD><TD><center><font size=-2>6.88</TD><TD><center><font size=-2>7.85</TD><TD><center><font size=-2>81.27</TD></TR>
 <TR><TD><center><font size=-2>15/2</TD><TD><center><font size=-2> 18-19</TD><TD><center><font size=-2>8.45</TD><TD><center><font size=-2>9.55</TD><TD><center><font size=-2>80.30</TD></TR>
 <TR><TD><center><font size=-2>15/2</TD><TD><center><font size=-2> 17-18</TD><TD><center><font size=-2>8.80</TD><TD><center><font size=-2>10.05</TD><TD><center><font size=-2>78.58</TD></TR>
 <TR><TD><center><font size=-2>15/2</TD><TD><center><font size=-2> 16-17</TD><TD><center><font size=-2>9.63</TD><TD><center><font size=-2>11.35</TD><TD><center><font size=-2>76.12</TD></TR>
 <TR><TD><center><font size=-2>15/2</TD><TD><center><font size=-2> 15-16</TD><TD><center><font size=-2>9.60</TD><TD><center><font size=-2>11.33</TD><TD><center><font size=-2>76.41</TD></TR>
 <TR><TD><center><font size=-2>15/2</TD><TD><center><font size=-2> 14-15</TD><TD><center><font size=-2>9.38</TD><TD><center><font size=-2>11.77</TD><TD><center><font size=-2>76.57</TD></TR>
 <TR><TD><center><font size=-2>15/2</TD><TD><center><font size=-2> 13-14</TD><TD><center><font size=-2>7.86</TD><TD><center><font size=-2>9.95</TD><TD><center><font size=-2>73.96</TD></TR>
 <TR><TD><center><font size=-2>15/2</TD><TD><center><font size=-2> 12-13</TD><TD><center><font size=-2>5.81</TD><TD><center><font size=-2>7.59</TD><TD><center><font size=-2>74.75</TD></TR>
 <TR><TD><center><font size=-2>15/2</TD><TD><center><font size=-2> 11-12</TD><TD><center><font size=-2>7.78</TD><TD><center><font size=-2>9.95</TD><TD><center><font size=-2>69.83</TD></TR>
 <TR><TD><center><font size=-2>15/2</TD><TD><center><font size=-2> 10-11</TD><TD><center><font size=-2>6.51</TD><TD><center><font size=-2>8.12</TD><TD><center><font size=-2>72.06</TD></TR>
 <TR><TD><center><font size=-2>15/2</TD><TD><center><font size=-2> 9-10</TD><TD><center><font size=-2>5.56</TD><TD><center><font size=-2>6.77</TD><TD><center><font size=-2>71.74</TD></TR>
 <TR><TD><center><font size=-2>15/2</TD><TD><center><font size=-2> 8- 9</TD><TD><center><font size=-2>5.57</TD><TD><center><font size=-2>6.68</TD><TD><center><font size=-2>70.46</TD></TR>
 <TR><TD><center><font size=-2>15/2</TD><TD><center><font size=-2> 7- 8</TD><TD><center><font size=-2>4.96</TD><TD><center><font size=-2>6.07</TD><TD><center><font size=-2>70.19</TD></TR>
 <TR><TD><center><font size=-2>15/2</TD><TD><center><font size=-2> 6- 7</TD><TD><center><font size=-2>5.09</TD><TD><center><font size=-2>6.05</TD><TD><center><font size=-2>69.53</TD></TR>
 <TR><TD><center><font size=-2>15/2</TD><TD><center><font size=-2> 5- 6</TD><TD><center><font size=-2>5.81</TD><TD><center><font size=-2>6.91</TD><TD><center><font size=-2>66.67</TD></TR>
 <TR><TD><center><font size=-2>15/2</TD><TD><center><font size=-2> 4- 5</TD><TD><center><font size=-2>7.73</TD><TD><center><font size=-2>8.76</TD><TD><center><font size=-2>60.06</TD></TR>
 <TR><TD><center><font size=-2>15/2</TD><TD><center><font size=-2> 3- 4</TD><TD><center><font size=-2>7.23</TD><TD><center><font size=-2>8.87</TD><TD><center><font size=-2>56.38</TD></TR>
 <TR><TD><center><font size=-2>15/2</TD><TD><center><font size=-2> 2- 3</TD><TD><center><font size=-2>7.84</TD><TD><center><font size=-2>9.29</TD><TD><center><font size=-2>57.76</TD></TR>
 <TR><TD><center><font size=-2>15/2</TD><TD><center><font size=-2> 1- 2</TD><TD><center><font size=-2>7.90</TD><TD><center><font size=-2>9.47</TD><TD><center><font size=-2>58.84</TD></TR>
 <TR><TD><center><font size=-2>15/2</TD><TD><center><font size=-2> 0- 1</TD><TD><center><font size=-2>8.90</TD><TD><center><font size=-2>10.51</TD><TD><center><font size=-2>58.01</TD></TR>
 <TR><TD><strong><font size=-2>DATO - 2015</TD><TD><strong><font size=-2>&nbsp;Tid&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;NO<sub>2 </sub>&nbsp;&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;NO<sub>x </sub>&nbsp;&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;O<sub>3 </sub>&nbsp;&nbsp;&nbsp;</TD></TR>
 <TR><TD><center><font size=-2>14/2</TD><TD><center><font size=-2> 23-24</TD><TD><center><font size=-2>9.64</TD><TD><center><font size=-2>11.36</TD><TD><center><font size=-2>57.96</TD></TR>
 <TR><TD><center><font size=-2>14/2</TD><TD><center><font size=-2> 22-23</TD><TD><center><font size=-2>10.18</TD><TD><center><font size=-2>12.13</TD><TD><center><font size=-2>57.79</TD></TR>
 <TR><TD><center><font size=-2>14/2</TD><TD><center><font size=-2> 21-22</TD><TD><center><font size=-2>12.36</TD><TD><center><font size=-2>14.03</TD><TD><center><font size=-2>54.18</TD></TR>
 <TR><TD><center><font size=-2>14/2</TD><TD><center><font size=-2> 20-21</TD><TD><center><font size=-2>14.07</TD><TD><center><font size=-2>16.19</TD><TD><center><font size=-2>50.47</TD></TR>
 <TR><TD><center><font size=-2>14/2</TD><TD><center><font size=-2> 19-20</TD><TD><center><font size=-2>14.32</TD><TD><center><font size=-2>17.30</TD><TD><center><font size=-2>43.74</TD></TR>
 <TR><TD><center><font size=-2>14/2</TD><TD><center><font size=-2> 18-19</TD><TD><center><font size=-2>18.35</TD><TD><center><font size=-2>21.01</TD><TD><center><font size=-2>41.68</TD></TR>
 <TR><TD><center><font size=-2>14/2</TD><TD><center><font size=-2> 17-18</TD><TD><center><font size=-2>23.95</TD><TD><center><font size=-2>27.25</TD><TD><center><font size=-2>32.29</TD></TR>
 <TR><TD><center><font size=-2>14/2</TD><TD><center><font size=-2> 16-17</TD><TD><center><font size=-2>19.16</TD><TD><center><font size=-2>23.58</TD><TD><center><font size=-2>37.23</TD></TR>
 <TR><TD><center><font size=-2>14/2</TD><TD><center><font size=-2> 15-16</TD><TD><center><font size=-2>18.26</TD><TD><center><font size=-2>26.43</TD><TD><center><font size=-2>32.62</TD></TR>
 <TR><TD><center><font size=-2>14/2</TD><TD><center><font size=-2> 14-15</TD><TD><center><font size=-2>18.39</TD><TD><center><font size=-2>26.33</TD><TD><center><font size=-2>29.98</TD></TR>
 <TR><TD><center><font size=-2>14/2</TD><TD><center><font size=-2> 13-14</TD><TD><center><font size=-2>18.27</TD><TD><center><font size=-2>25.85</TD><TD><center><font size=-2>30.41</TD></TR>
 <TR><TD><center><font size=-2>14/2</TD><TD><center><font size=-2> 12-13</TD><TD><center><font size=-2>19.88</TD><TD><center><font size=-2>29.97</TD><TD><center><font size=-2>21.06</TD></TR>
 <TR><TD><center><font size=-2>14/2</TD><TD><center><font size=-2> 11-12</TD><TD><center><font size=-2>21.49</TD><TD><center><font size=-2>34.79</TD><TD><center><font size=-2>15.57</TD></TR>
 <TR><TD><center><font size=-2>14/2</TD><TD><center><font size=-2> 10-11</TD><TD><center><font size=-2>22.03</TD><TD><center><font size=-2>32.66</TD><TD><center><font size=-2>13.92</TD></TR>
 <TR><TD><center><font size=-2>14/2</TD><TD><center><font size=-2> 9-10</TD><TD><center><font size=-2>17.42</TD><TD><center><font size=-2>23.35</TD><TD><center><font size=-2>18.26</TD></TR>
 <TR><TD><center><font size=-2>14/2</TD><TD><center><font size=-2> 8- 9</TD><TD><center><font size=-2>16.86</TD><TD><center><font size=-2>19.98</TD><TD><center><font size=-2>20.52</TD></TR>
 <TR><TD><center><font size=-2>14/2</TD><TD><center><font size=-2> 7- 8</TD><TD><center><font size=-2>14.26</TD><TD><center><font size=-2>16.70</TD><TD><center><font size=-2>25.19</TD></TR>
 <TR><TD><center><font size=-2>14/2</TD><TD><center><font size=-2> 6- 7</TD><TD><center><font size=-2>14.23</TD><TD><center><font size=-2>15.53</TD><TD><center><font size=-2>27.62</TD></TR>
 <TR><TD><center><font size=-2>14/2</TD><TD><center><font size=-2> 5- 6</TD><TD><center><font size=-2>13.87</TD><TD><center><font size=-2>15.32</TD><TD><center><font size=-2>28.54</TD></TR>
 <TR><TD><center><font size=-2>14/2</TD><TD><center><font size=-2> 4- 5</TD><TD><center><font size=-2>11.79</TD><TD><center><font size=-2>12.96</TD><TD><center><font size=-2>32.21</TD></TR>
 <TR><TD><center><font size=-2>14/2</TD><TD><center><font size=-2> 3- 4</TD><TD><center><font size=-2>11.36</TD><TD><center><font size=-2>12.73</TD><TD><center><font size=-2>34.68</TD></TR>
 <TR><TD><center><font size=-2>14/2</TD><TD><center><font size=-2> 2- 3</TD><TD><center><font size=-2>10.45</TD><TD><center><font size=-2>11.45</TD><TD><center><font size=-2>37.13</TD></TR>
 <TR><TD><center><font size=-2>14/2</TD><TD><center><font size=-2> 1- 2</TD><TD><center><font size=-2>14.06</TD><TD><center><font size=-2>15.08</TD><TD><center><font size=-2>33.15</TD></TR>
 <TR><TD><center><font size=-2>14/2</TD><TD><center><font size=-2> 0- 1</TD><TD><center><font size=-2>18.66</TD><TD><center><font size=-2>19.85</TD><TD><center><font size=-2>27.25</TD></TR>
 <TR><TD><strong><font size=-2>DATO - 2015</TD><TD><strong><font size=-2>&nbsp;Tid&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;NO<sub>2 </sub>&nbsp;&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;NO<sub>x </sub>&nbsp;&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;O<sub>3 </sub>&nbsp;&nbsp;&nbsp;</TD></TR>
 <TR><TD><center><font size=-2>13/2</TD><TD><center><font size=-2> 23-24</TD><TD><center><font size=-2>23.03</TD><TD><center><font size=-2>24.24</TD><TD><center><font size=-2>22.60</TD></TR>
 <TR><TD><center><font size=-2>13/2</TD><TD><center><font size=-2> 22-23</TD><TD><center><font size=-2>22.28</TD><TD><center><font size=-2>22.95</TD><TD><center><font size=-2>26.75</TD></TR>
 <TR><TD><center><font size=-2>13/2</TD><TD><center><font size=-2> 21-22</TD><TD><center><font size=-2>20.45</TD><TD><center><font size=-2>21.07</TD><TD><center><font size=-2>29.32</TD></TR>
 <TR><TD><center><font size=-2>13/2</TD><TD><center><font size=-2> 20-21</TD><TD><center><font size=-2>19.19</TD><TD><center><font size=-2>19.88</TD><TD><center><font size=-2>32.71</TD></TR>
 <TR><TD><center><font size=-2>13/2</TD><TD><center><font size=-2> 19-20</TD><TD><center><font size=-2>17.71</TD><TD><center><font size=-2>18.30</TD><TD><center><font size=-2>33.31</TD></TR>
 <TR><TD><center><font size=-2>13/2</TD><TD><center><font size=-2> 18-19</TD><TD><center><font size=-2>20.76</TD><TD><center><font size=-2>22.19</TD><TD><center><font size=-2>33.03</TD></TR>
 <TR><TD><center><font size=-2>13/2</TD><TD><center><font size=-2> 17-18</TD><TD><center><font size=-2>22.84</TD><TD><center><font size=-2>23.90</TD><TD><center><font size=-2>31.17</TD></TR>
 <TR><TD><center><font size=-2>13/2</TD><TD><center><font size=-2> 16-17</TD><TD><center><font size=-2>22.84</TD><TD><center><font size=-2>24.73</TD><TD><center><font size=-2>28.98</TD></TR>
 <TR><TD><center><font size=-2>13/2</TD><TD><center><font size=-2> 15-16</TD><TD><center><font size=-2>19.82</TD><TD><center><font size=-2>23.15</TD><TD><center><font size=-2>32.78</TD></TR>
 <TR><TD><center><font size=-2>13/2</TD><TD><center><font size=-2> 14-15</TD><TD><center><font size=-2>18.28</TD><TD><center><font size=-2>24.31</TD><TD><center><font size=-2>29.32</TD></TR>
 <TR><TD><center><font size=-2>13/2</TD><TD><center><font size=-2> 13-14</TD><TD><center><font size=-2>19.35</TD><TD><center><font size=-2>28.03</TD><TD><center><font size=-2>26.67</TD></TR>
 <TR><TD><center><font size=-2>13/2</TD><TD><center><font size=-2> 12-13</TD><TD><center><font size=-2>19.25</TD><TD><center><font size=-2>28.68</TD><TD><center><font size=-2>24.23</TD></TR>
 <TR><TD><center><font size=-2>13/2</TD><TD><center><font size=-2> 11-12</TD><TD><center><font size=-2>23.66</TD><TD><center><font size=-2>33.53</TD><TD><center><font size=-2>16.96</TD></TR>
 <TR><TD><center><font size=-2>13/2</TD><TD><center><font size=-2> 10-11</TD><TD><center><font size=-2>24.59</TD><TD><center><font size=-2>31.29</TD><TD><center><font size=-2>15.93</TD></TR>
 <TR><TD><center><font size=-2>13/2</TD><TD><center><font size=-2> 9-10</TD><TD><center><font size=-2>25.78</TD><TD><center><font size=-2>32.63</TD><TD><center><font size=-2>12.47</TD></TR>
 <TR><TD><center><font size=-2>13/2</TD><TD><center><font size=-2> 8- 9</TD><TD><center><font size=-2>28.88</TD><TD><center><font size=-2>35.75</TD><TD><center><font size=-2>8.47</TD></TR>
 <TR><TD><center><font size=-2>13/2</TD><TD><center><font size=-2> 7- 8</TD><TD><center><font size=-2>29.00</TD><TD><center><font size=-2>36.84</TD><TD><center><font size=-2>8.19</TD></TR>
 <TR><TD><center><font size=-2>13/2</TD><TD><center><font size=-2> 6- 7</TD><TD><center><font size=-2>24.18</TD><TD><center><font size=-2>34.14</TD><TD><center><font size=-2>13.86</TD></TR>
 <TR><TD><center><font size=-2>13/2</TD><TD><center><font size=-2> 5- 6</TD><TD><center><font size=-2>18.42</TD><TD><center><font size=-2>18.84</TD><TD><center><font size=-2>19.52</TD></TR>
 <TR><TD><center><font size=-2>13/2</TD><TD><center><font size=-2> 4- 5</TD><TD><center><font size=-2>12.25</TD><TD><center><font size=-2>12.69</TD><TD><center><font size=-2>27.45</TD></TR>
 <TR><TD><center><font size=-2>13/2</TD><TD><center><font size=-2> 3- 4</TD><TD><center><font size=-2>16.07</TD><TD><center><font size=-2>16.64</TD><TD><center><font size=-2>23.71</TD></TR>
 <TR><TD><center><font size=-2>13/2</TD><TD><center><font size=-2> 2- 3</TD><TD><center><font size=-2>22.78</TD><TD><center><font size=-2>24.04</TD><TD><center><font size=-2>25.16</TD></TR>
 <TR><TD><center><font size=-2>13/2</TD><TD><center><font size=-2> 1- 2</TD><TD><center><font size=-2>34.18</TD><TD><center><font size=-2>35.25</TD><TD><center><font size=-2>11.30</TD></TR>
 <TR><TD><center><font size=-2>13/2</TD><TD><center><font size=-2> 0- 1</TD><TD><center><font size=-2>18.39</TD><TD><center><font size=-2>18.88</TD><TD><center><font size=-2>25.32</TD></TR>
 <TR><TD><strong><font size=-2>DATO - 2015</TD><TD><strong><font size=-2>&nbsp;Tid&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;NO<sub>2 </sub>&nbsp;&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;NO<sub>x </sub>&nbsp;&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;O<sub>3 </sub>&nbsp;&nbsp;&nbsp;</TD></TR>
 <TR><TD><center><font size=-2>12/2</TD><TD><center><font size=-2> 23-24</TD><TD><center><font size=-2>12.92</TD><TD><center><font size=-2>13.47</TD><TD><center><font size=-2>33.90</TD></TR>
 <TR><TD><center><font size=-2>12/2</TD><TD><center><font size=-2> 22-23</TD><TD><center><font size=-2>12.14</TD><TD><center><font size=-2>12.98</TD><TD><center><font size=-2>36.12</TD></TR>
 <TR><TD><center><font size=-2>12/2</TD><TD><center><font size=-2> 21-22</TD><TD><center><font size=-2>11.54</TD><TD><center><font size=-2>12.53</TD><TD><center><font size=-2>37.18</TD></TR>
 <TR><TD><center><font size=-2>12/2</TD><TD><center><font size=-2> 20-21</TD><TD><center><font size=-2>9.48</TD><TD><center><font size=-2>10.26</TD><TD><center><font size=-2>40.94</TD></TR>
 <TR><TD><center><font size=-2>12/2</TD><TD><center><font size=-2> 19-20</TD><TD><center><font size=-2>10.99</TD><TD><center><font size=-2>11.83</TD><TD><center><font size=-2>40.34</TD></TR>
 <TR><TD><center><font size=-2>12/2</TD><TD><center><font size=-2> 18-19</TD><TD><center><font size=-2>14.27</TD><TD><center><font size=-2>15.25</TD><TD><center><font size=-2>38.04</TD></TR>
 <TR><TD><center><font size=-2>12/2</TD><TD><center><font size=-2> 17-18</TD><TD><center><font size=-2>12.51</TD><TD><center><font size=-2>13.31</TD><TD><center><font size=-2>40.95</TD></TR>
 <TR><TD><center><font size=-2>12/2</TD><TD><center><font size=-2> 16-17</TD><TD><center><font size=-2>13.08</TD><TD><center><font size=-2>14.49</TD><TD><center><font size=-2>40.56</TD></TR>
 <TR><TD><center><font size=-2>12/2</TD><TD><center><font size=-2> 15-16</TD><TD><center><font size=-2>14.84</TD><TD><center><font size=-2>16.80</TD><TD><center><font size=-2>39.70</TD></TR>
 <TR><TD><center><font size=-2>12/2</TD><TD><center><font size=-2> 14-15</TD><TD><center><font size=-2>14.23</TD><TD><center><font size=-2>16.20</TD><TD><center><font size=-2>43.00</TD></TR>
 <TR><TD><center><font size=-2>12/2</TD><TD><center><font size=-2> 13-14</TD><TD><center><font size=-2>13.22</TD><TD><center><font size=-2>15.75</TD><TD><center><font size=-2>44.91</TD></TR>
 <TR><TD><center><font size=-2>12/2</TD><TD><center><font size=-2> 12-13</TD><TD><center><font size=-2>13.58</TD><TD><center><font size=-2>15.93</TD><TD><center><font size=-2>43.81</TD></TR>
 <TR><TD><center><font size=-2>12/2</TD><TD><center><font size=-2> 11-12</TD><TD><center><font size=-2>13.66</TD><TD><center><font size=-2>16.21</TD><TD><center><font size=-2>43.94</TD></TR>
 <TR><TD><center><font size=-2>12/2</TD><TD><center><font size=-2> 10-11</TD><TD><center><font size=-2>21.84</TD><TD><center><font size=-2>36.11</TD><TD><center><font size=-2>34.21</TD></TR>
 <TR><TD><center><font size=-2>12/2</TD><TD><center><font size=-2> 9-10</TD><TD><center><font size=-2>16.48</TD><TD><center><font size=-2>18.52</TD><TD><center><font size=-2>39.64</TD></TR>
 <TR><TD><center><font size=-2>12/2</TD><TD><center><font size=-2> 8- 9</TD><TD><center><font size=-2>17.69</TD><TD><center><font size=-2>20.23</TD><TD><center><font size=-2>37.70</TD></TR>
 <TR><TD><center><font size=-2>12/2</TD><TD><center><font size=-2> 7- 8</TD><TD><center><font size=-2>15.06</TD><TD><center><font size=-2>16.25</TD><TD><center><font size=-2>42.62</TD></TR>
 <TR><TD><center><font size=-2>12/2</TD><TD><center><font size=-2> 6- 7</TD><TD><center><font size=-2>9.78</TD><TD><center><font size=-2>10.50</TD><TD><center><font size=-2>49.75</TD></TR>
 <TR><TD><center><font size=-2>12/2</TD><TD><center><font size=-2> 5- 6</TD><TD><center><font size=-2>6.34</TD><TD><center><font size=-2>6.99</TD><TD><center><font size=-2>55.62</TD></TR>
 <TR><TD><center><font size=-2>12/2</TD><TD><center><font size=-2> 4- 5</TD><TD><center><font size=-2>5.70</TD><TD><center><font size=-2>6.41</TD><TD><center><font size=-2>59.20</TD></TR>
 <TR><TD><center><font size=-2>12/2</TD><TD><center><font size=-2> 3- 4</TD><TD><center><font size=-2>4.21</TD><TD><center><font size=-2>4.47</TD><TD><center><font size=-2>63.46</TD></TR>
 <TR><TD><center><font size=-2>12/2</TD><TD><center><font size=-2> 2- 3</TD><TD><center><font size=-2>4.96</TD><TD><center><font size=-2>5.58</TD><TD><center><font size=-2>65.25</TD></TR>
 <TR><TD><center><font size=-2>12/2</TD><TD><center><font size=-2> 1- 2</TD><TD><center><font size=-2>5.69</TD><TD><center><font size=-2>6.17</TD><TD><center><font size=-2>64.10</TD></TR>
 <TR><TD><center><font size=-2>12/2</TD><TD><center><font size=-2> 0- 1</TD><TD><center><font size=-2>4.55</TD><TD><center><font size=-2>4.99</TD><TD><center><font size=-2>68.08</TD></TR>
 <TR><TD><strong><font size=-2>DATO - 2015</TD><TD><strong><font size=-2>&nbsp;Tid&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;NO<sub>2 </sub>&nbsp;&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;NO<sub>x </sub>&nbsp;&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;O<sub>3 </sub>&nbsp;&nbsp;&nbsp;</TD></TR>
 <TR><TD><center><font size=-2>11/2</TD><TD><center><font size=-2> 23-24</TD><TD><center><font size=-2>4.46</TD><TD><center><font size=-2>5.06</TD><TD><center><font size=-2>69.31</TD></TR>
 <TR><TD><center><font size=-2>11/2</TD><TD><center><font size=-2> 22-23</TD><TD><center><font size=-2>4.62</TD><TD><center><font size=-2>4.75</TD><TD><center><font size=-2>69.99</TD></TR>
 <TR><TD><center><font size=-2>11/2</TD><TD><center><font size=-2> 21-22</TD><TD><center><font size=-2>5.30</TD><TD><center><font size=-2>5.65</TD><TD><center><font size=-2>68.88</TD></TR>
 <TR><TD><center><font size=-2>11/2</TD><TD><center><font size=-2> 20-21</TD><TD><center><font size=-2>7.09</TD><TD><center><font size=-2>7.32</TD><TD><center><font size=-2>67.42</TD></TR>
 <TR><TD><center><font size=-2>11/2</TD><TD><center><font size=-2> 19-20</TD><TD><center><font size=-2>8.30</TD><TD><center><font size=-2>8.76</TD><TD><center><font size=-2>66.73</TD></TR>
 <TR><TD><center><font size=-2>11/2</TD><TD><center><font size=-2> 18-19</TD><TD><center><font size=-2>8.10</TD><TD><center><font size=-2>8.44</TD><TD><center><font size=-2>67.64</TD></TR>
 <TR><TD><center><font size=-2>11/2</TD><TD><center><font size=-2> 17-18</TD><TD><center><font size=-2>8.12</TD><TD><center><font size=-2>8.40</TD><TD><center><font size=-2>67.67</TD></TR>
 <TR><TD><center><font size=-2>11/2</TD><TD><center><font size=-2> 16-17</TD><TD><center><font size=-2>10.44</TD><TD><center><font size=-2>10.80</TD><TD><center><font size=-2>63.20</TD></TR>
 <TR><TD><center><font size=-2>11/2</TD><TD><center><font size=-2> 15-16</TD><TD><center><font size=-2>7.88</TD><TD><center><font size=-2>8.54</TD><TD><center><font size=-2>64.88</TD></TR>
 <TR><TD><center><font size=-2>11/2</TD><TD><center><font size=-2> 14-15</TD><TD><center><font size=-2>8.97</TD><TD><center><font size=-2>9.54</TD><TD><center><font size=-2>64.75</TD></TR>
 <TR><TD><center><font size=-2>11/2</TD><TD><center><font size=-2> 13-14</TD><TD><center><font size=-2>11.47</TD><TD><center><font size=-2>12.77</TD><TD><center><font size=-2>62.15</TD></TR>
 <TR><TD><center><font size=-2>11/2</TD><TD><center><font size=-2> 12-13</TD><TD><center><font size=-2>12.47</TD><TD><center><font size=-2>14.11</TD><TD><center><font size=-2>56.59</TD></TR>
 <TR><TD><center><font size=-2>11/2</TD><TD><center><font size=-2> 11-12</TD><TD><center><font size=-2>13.09</TD><TD><center><font size=-2>14.88</TD><TD><center><font size=-2>53.54</TD></TR>
 <TR><TD><center><font size=-2>11/2</TD><TD><center><font size=-2> 10-11</TD><TD><center><font size=-2>14.99</TD><TD><center><font size=-2>16.48</TD><TD><center><font size=-2>54.21</TD></TR>
 <TR><TD><center><font size=-2>11/2</TD><TD><center><font size=-2> 9-10</TD><TD><center><font size=-2>13.13</TD><TD><center><font size=-2>14.28</TD><TD><center><font size=-2>59.22</TD></TR>
 <TR><TD><center><font size=-2>11/2</TD><TD><center><font size=-2> 8- 9</TD><TD><center><font size=-2>17.30</TD><TD><center><font size=-2>17.76</TD><TD><center><font size=-2>57.15</TD></TR>
 <TR><TD><center><font size=-2>11/2</TD><TD><center><font size=-2> 7- 8</TD><TD><center><font size=-2>17.69</TD><TD><center><font size=-2>21.10</TD><TD><center><font size=-2>58.70</TD></TR>
 <TR><TD><center><font size=-2>11/2</TD><TD><center><font size=-2> 6- 7</TD><TD><center><font size=-2>9.48</TD><TD><center><font size=-2>10.13</TD><TD><center><font size=-2>67.32</TD></TR>
 <TR><TD><center><font size=-2>11/2</TD><TD><center><font size=-2> 5- 6</TD><TD><center><font size=-2>8.62</TD><TD><center><font size=-2>9.50</TD><TD><center><font size=-2>65.06</TD></TR>
 <TR><TD><center><font size=-2>11/2</TD><TD><center><font size=-2> 4- 5</TD><TD><center><font size=-2>3.61</TD><TD><center><font size=-2>3.69</TD><TD><center><font size=-2>68.93</TD></TR>
 <TR><TD><center><font size=-2>11/2</TD><TD><center><font size=-2> 3- 4</TD><TD><center><font size=-2>2.37</TD><TD><center><font size=-2>2.10</TD><TD><center><font size=-2>71.22</TD></TR>
 <TR><TD><center><font size=-2>11/2</TD><TD><center><font size=-2> 2- 3</TD><TD><center><font size=-2>3.06</TD><TD><center><font size=-2>2.83</TD><TD><center><font size=-2>68.43</TD></TR>
 <TR><TD><center><font size=-2>11/2</TD><TD><center><font size=-2> 1- 2</TD><TD><center><font size=-2>3.87</TD><TD><center><font size=-2>3.49</TD><TD><center><font size=-2>66.76</TD></TR>
 <TR><TD><center><font size=-2>11/2</TD><TD><center><font size=-2> 0- 1</TD><TD><center><font size=-2>9.23</TD><TD><center><font size=-2>9.17</TD><TD><center><font size=-2>59.08</TD></TR>
 <TR><TD><strong><font size=-2>DATO - 2015</TD><TD><strong><font size=-2>&nbsp;Tid&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;NO<sub>2 </sub>&nbsp;&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;NO<sub>x </sub>&nbsp;&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;O<sub>3 </sub>&nbsp;&nbsp;&nbsp;</TD></TR>
 <TR><TD><center><font size=-2>10/2</TD><TD><center><font size=-2> 23-24</TD><TD><center><font size=-2>10.25</TD><TD><center><font size=-2>10.54</TD><TD><center><font size=-2>60.52</TD></TR>
 <TR><TD><center><font size=-2>10/2</TD><TD><center><font size=-2> 22-23</TD><TD><center><font size=-2>10.42</TD><TD><center><font size=-2>10.95</TD><TD><center><font size=-2>61.33</TD></TR>
 <TR><TD><center><font size=-2>10/2</TD><TD><center><font size=-2> 21-22</TD><TD><center><font size=-2>9.99</TD><TD><center><font size=-2>10.29</TD><TD><center><font size=-2>64.86</TD></TR>
 <TR><TD><center><font size=-2>10/2</TD><TD><center><font size=-2> 20-21</TD><TD><center><font size=-2>10.96</TD><TD><center><font size=-2>11.30</TD><TD><center><font size=-2>65.52</TD></TR>
 <TR><TD><center><font size=-2>10/2</TD><TD><center><font size=-2> 19-20</TD><TD><center><font size=-2>13.79</TD><TD><center><font size=-2>14.29</TD><TD><center><font size=-2>65.55</TD></TR>
 <TR><TD><center><font size=-2>10/2</TD><TD><center><font size=-2> 18-19</TD><TD><center><font size=-2>12.59</TD><TD><center><font size=-2>13.19</TD><TD><center><font size=-2>66.71</TD></TR>
 <TR><TD><center><font size=-2>10/2</TD><TD><center><font size=-2> 17-18</TD><TD><center><font size=-2>9.59</TD><TD><center><font size=-2>10.09</TD><TD><center><font size=-2>69.11</TD></TR>
 <TR><TD><center><font size=-2>10/2</TD><TD><center><font size=-2> 16-17</TD><TD><center><font size=-2>10.95</TD><TD><center><font size=-2>12.39</TD><TD><center><font size=-2>68.33</TD></TR>
 <TR><TD><center><font size=-2>10/2</TD><TD><center><font size=-2> 15-16</TD><TD><center><font size=-2>8.97</TD><TD><center><font size=-2>10.43</TD><TD><center><font size=-2>70.05</TD></TR>
 <TR><TD><center><font size=-2>10/2</TD><TD><center><font size=-2> 14-15</TD><TD><center><font size=-2>8.03</TD><TD><center><font size=-2>10.12</TD><TD><center><font size=-2>71.53</TD></TR>
 <TR><TD><center><font size=-2>10/2</TD><TD><center><font size=-2> 13-14</TD><TD><center><font size=-2>7.99</TD><TD><center><font size=-2>10.42</TD><TD><center><font size=-2>71.74</TD></TR>
 <TR><TD><center><font size=-2>10/2</TD><TD><center><font size=-2> 12-13</TD><TD><center><font size=-2>7.00</TD><TD><center><font size=-2>9.13</TD><TD><center><font size=-2>72.54</TD></TR>
 <TR><TD><center><font size=-2>10/2</TD><TD><center><font size=-2> 11-12</TD><TD><center><font size=-2>8.78</TD><TD><center><font size=-2>10.53</TD><TD><center><font size=-2>69.21</TD></TR>
 <TR><TD><center><font size=-2>10/2</TD><TD><center><font size=-2> 10-11</TD><TD><center><font size=-2>9.98</TD><TD><center><font size=-2>12.44</TD><TD><center><font size=-2>68.41</TD></TR>
 <TR><TD><center><font size=-2>10/2</TD><TD><center><font size=-2> 9-10</TD><TD><center><font size=-2>14.34</TD><TD><center><font size=-2>17.12</TD><TD><center><font size=-2>65.97</TD></TR>
 <TR><TD><center><font size=-2>10/2</TD><TD><center><font size=-2> 8- 9</TD><TD><center><font size=-2>12.08</TD><TD><center><font size=-2>13.84</TD><TD><center><font size=-2>69.85</TD></TR>
 <TR><TD><center><font size=-2>10/2</TD><TD><center><font size=-2> 7- 8</TD><TD><center><font size=-2>11.00</TD><TD><center><font size=-2>14.33</TD><TD><center><font size=-2>72.18</TD></TR>
 <TR><TD><center><font size=-2>10/2</TD><TD><center><font size=-2> 6- 7</TD><TD><center><font size=-2>7.29</TD><TD><center><font size=-2>8.86</TD><TD><center><font size=-2>74.05</TD></TR>
 <TR><TD><center><font size=-2>10/2</TD><TD><center><font size=-2> 5- 6</TD><TD><center><font size=-2>3.87</TD><TD><center><font size=-2>3.85</TD><TD><center><font size=-2>77.18</TD></TR>
 <TR><TD><center><font size=-2>10/2</TD><TD><center><font size=-2> 4- 5</TD><TD><center><font size=-2>4.22</TD><TD><center><font size=-2>4.71</TD><TD><center><font size=-2>77.03</TD></TR>
 <TR><TD><center><font size=-2>10/2</TD><TD><center><font size=-2> 3- 4</TD><TD><center><font size=-2>1.32</TD><TD><center><font size=-2>1.82</TD><TD><center><font size=-2>78.67</TD></TR>
 <TR><TD><center><font size=-2>10/2</TD><TD><center><font size=-2> 2- 3</TD><TD><center><font size=-2>2.38</TD><TD><center><font size=-2>2.69</TD><TD><center><font size=-2>76.86</TD></TR>
 <TR><TD><center><font size=-2>10/2</TD><TD><center><font size=-2> 1- 2</TD><TD><center><font size=-2>2.91</TD><TD><center><font size=-2>3.24</TD><TD><center><font size=-2>71.46</TD></TR>
 <TR><TD><center><font size=-2>10/2</TD><TD><center><font size=-2> 0- 1</TD><TD><center><font size=-2>4.13</TD><TD><center><font size=-2>4.51</TD><TD><center><font size=-2>69.87</TD></TR>
 <TR><TD><strong><font size=-2>DATO - 2015</TD><TD><strong><font size=-2>&nbsp;Tid&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;NO<sub>2 </sub>&nbsp;&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;NO<sub>x </sub>&nbsp;&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;O<sub>3 </sub>&nbsp;&nbsp;&nbsp;</TD></TR>
 <TR><TD><center><font size=-2>9/2</TD><TD><center><font size=-2> 23-24</TD><TD><center><font size=-2>5.53</TD><TD><center><font size=-2>6.00</TD><TD><center><font size=-2>69.74</TD></TR>
 <TR><TD><center><font size=-2>9/2</TD><TD><center><font size=-2> 22-23</TD><TD><center><font size=-2>6.68</TD><TD><center><font size=-2>6.99</TD><TD><center><font size=-2>69.00</TD></TR>
 <TR><TD><center><font size=-2>9/2</TD><TD><center><font size=-2> 21-22</TD><TD><center><font size=-2>7.80</TD><TD><center><font size=-2>8.54</TD><TD><center><font size=-2>70.34</TD></TR>
 <TR><TD><center><font size=-2>9/2</TD><TD><center><font size=-2> 20-21</TD><TD><center><font size=-2>7.75</TD><TD><center><font size=-2>8.37</TD><TD><center><font size=-2>71.83</TD></TR>
 <TR><TD><center><font size=-2>9/2</TD><TD><center><font size=-2> 19-20</TD><TD><center><font size=-2>11.04</TD><TD><center><font size=-2>11.38</TD><TD><center><font size=-2>68.32</TD></TR>
 <TR><TD><center><font size=-2>9/2</TD><TD><center><font size=-2> 18-19</TD><TD><center><font size=-2>12.88</TD><TD><center><font size=-2>13.43</TD><TD><center><font size=-2>68.01</TD></TR>
 <TR><TD><center><font size=-2>9/2</TD><TD><center><font size=-2> 17-18</TD><TD><center><font size=-2>12.61</TD><TD><center><font size=-2>13.21</TD><TD><center><font size=-2>70.14</TD></TR>
 <TR><TD><center><font size=-2>9/2</TD><TD><center><font size=-2> 16-17</TD><TD><center><font size=-2>9.35</TD><TD><center><font size=-2>10.23</TD><TD><center><font size=-2>74.72</TD></TR>
 <TR><TD><center><font size=-2>9/2</TD><TD><center><font size=-2> 15-16</TD><TD><center><font size=-2>7.81</TD><TD><center><font size=-2>9.37</TD><TD><center><font size=-2>77.11</TD></TR>
 <TR><TD><center><font size=-2>9/2</TD><TD><center><font size=-2> 14-15</TD><TD><center><font size=-2>7.45</TD><TD><center><font size=-2>9.31</TD><TD><center><font size=-2>78.78</TD></TR>
 <TR><TD><center><font size=-2>9/2</TD><TD><center><font size=-2> 13-14</TD><TD><center><font size=-2>7.14</TD><TD><center><font size=-2>9.39</TD><TD><center><font size=-2>79.14</TD></TR>
 <TR><TD><center><font size=-2>9/2</TD><TD><center><font size=-2> 12-13</TD><TD><center><font size=-2>6.50</TD><TD><center><font size=-2>8.47</TD><TD><center><font size=-2>79.88</TD></TR>
 <TR><TD><center><font size=-2>9/2</TD><TD><center><font size=-2> 11-12</TD><TD><center><font size=-2>7.82</TD><TD><center><font size=-2>10.18</TD><TD><center><font size=-2>78.15</TD></TR>
 <TR><TD><center><font size=-2>9/2</TD><TD><center><font size=-2> 10-11</TD><TD><center><font size=-2>10.52</TD><TD><center><font size=-2>12.92</TD><TD><center><font size=-2>75.88</TD></TR>
 <TR><TD><center><font size=-2>9/2</TD><TD><center><font size=-2> 9-10</TD><TD><center><font size=-2>11.67</TD><TD><center><font size=-2>14.18</TD><TD><center><font size=-2>74.08</TD></TR>
 <TR><TD><center><font size=-2>9/2</TD><TD><center><font size=-2> 8- 9</TD><TD><center><font size=-2>12.64</TD><TD><center><font size=-2>13.95</TD><TD><center><font size=-2>73.15</TD></TR>
 <TR><TD><center><font size=-2>9/2</TD><TD><center><font size=-2> 7- 8</TD><TD><center><font size=-2>12.38</TD><TD><center><font size=-2>14.02</TD><TD><center><font size=-2>72.84</TD></TR>
 <TR><TD><center><font size=-2>9/2</TD><TD><center><font size=-2> 6- 7</TD><TD><center><font size=-2>6.78</TD><TD><center><font size=-2>7.60</TD><TD><center><font size=-2>77.65</TD></TR>
 <TR><TD><center><font size=-2>9/2</TD><TD><center><font size=-2> 5- 6</TD><TD><center><font size=-2>4.70</TD><TD><center><font size=-2>5.92</TD><TD><center><font size=-2>78.88</TD></TR>
 <TR><TD><center><font size=-2>9/2</TD><TD><center><font size=-2> 4- 5</TD><TD><center><font size=-2>2.90</TD><TD><center><font size=-2>3.18</TD><TD><center><font size=-2>80.24</TD></TR>
 <TR><TD><center><font size=-2>9/2</TD><TD><center><font size=-2> 3- 4</TD><TD><center><font size=-2>2.54</TD><TD><center><font size=-2>2.78</TD><TD><center><font size=-2>80.22</TD></TR>
 <TR><TD><center><font size=-2>9/2</TD><TD><center><font size=-2> 2- 3</TD><TD><center><font size=-2>1.20</TD><TD><center><font size=-2>1.05</TD><TD><center><font size=-2>80.87</TD></TR>
 <TR><TD><center><font size=-2>9/2</TD><TD><center><font size=-2> 1- 2</TD><TD><center><font size=-2>1.19</TD><TD><center><font size=-2>1.25</TD><TD><center><font size=-2>80.16</TD></TR>
 <TR><TD><center><font size=-2>9/2</TD><TD><center><font size=-2> 0- 1</TD><TD><center><font size=-2>1.46</TD><TD><center><font size=-2>1.57</TD><TD><center><font size=-2>78.72</TD></TR>
 <TR><TD><strong><font size=-2>DATO - 2015</TD><TD><strong><font size=-2>&nbsp;Tid&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;NO<sub>2 </sub>&nbsp;&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;NO<sub>x </sub>&nbsp;&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;O<sub>3 </sub>&nbsp;&nbsp;&nbsp;</TD></TR>
 <TR><TD><center><font size=-2>8/2</TD><TD><center><font size=-2> 23-24</TD><TD><center><font size=-2>2.48</TD><TD><center><font size=-2>2.79</TD><TD><center><font size=-2>77.58</TD></TR>
 <TR><TD><center><font size=-2>8/2</TD><TD><center><font size=-2> 22-23</TD><TD><center><font size=-2>3.12</TD><TD><center><font size=-2>3.32</TD><TD><center><font size=-2>72.53</TD></TR>
 <TR><TD><center><font size=-2>8/2</TD><TD><center><font size=-2> 21-22</TD><TD><center><font size=-2>4.42</TD><TD><center><font size=-2>4.38</TD><TD><center><font size=-2>68.54</TD></TR>
 <TR><TD><center><font size=-2>8/2</TD><TD><center><font size=-2> 20-21</TD><TD><center><font size=-2>4.03</TD><TD><center><font size=-2>4.14</TD><TD><center><font size=-2>69.47</TD></TR>
 <TR><TD><center><font size=-2>8/2</TD><TD><center><font size=-2> 19-20</TD><TD><center><font size=-2>6.62</TD><TD><center><font size=-2>6.56</TD><TD><center><font size=-2>68.23</TD></TR>
 <TR><TD><center><font size=-2>8/2</TD><TD><center><font size=-2> 18-19</TD><TD><center><font size=-2>7.35</TD><TD><center><font size=-2>7.55</TD><TD><center><font size=-2>69.63</TD></TR>
 <TR><TD><center><font size=-2>8/2</TD><TD><center><font size=-2> 17-18</TD><TD><center><font size=-2>5.68</TD><TD><center><font size=-2>5.88</TD><TD><center><font size=-2>73.90</TD></TR>
 <TR><TD><center><font size=-2>8/2</TD><TD><center><font size=-2> 16-17</TD><TD><center><font size=-2>6.13</TD><TD><center><font size=-2>6.93</TD><TD><center><font size=-2>74.09</TD></TR>
 <TR><TD><center><font size=-2>8/2</TD><TD><center><font size=-2> 15-16</TD><TD><center><font size=-2>4.62</TD><TD><center><font size=-2>5.18</TD><TD><center><font size=-2>76.18</TD></TR>
 <TR><TD><center><font size=-2>8/2</TD><TD><center><font size=-2> 14-15</TD><TD><center><font size=-2>4.11</TD><TD><center><font size=-2>5.24</TD><TD><center><font size=-2>77.09</TD></TR>
 <TR><TD><center><font size=-2>8/2</TD><TD><center><font size=-2> 13-14</TD><TD><center><font size=-2>4.02</TD><TD><center><font size=-2>4.81</TD><TD><center><font size=-2>77.14</TD></TR>
 <TR><TD><center><font size=-2>8/2</TD><TD><center><font size=-2> 12-13</TD><TD><center><font size=-2>3.73</TD><TD><center><font size=-2>4.85</TD><TD><center><font size=-2>78.49</TD></TR>
 <TR><TD><center><font size=-2>8/2</TD><TD><center><font size=-2> 11-12</TD><TD><center><font size=-2>3.49</TD><TD><center><font size=-2>4.40</TD><TD><center><font size=-2>78.88</TD></TR>
 <TR><TD><center><font size=-2>8/2</TD><TD><center><font size=-2> 10-11</TD><TD><center><font size=-2>3.84</TD><TD><center><font size=-2>5.20</TD><TD><center><font size=-2>77.24</TD></TR>
 <TR><TD><center><font size=-2>8/2</TD><TD><center><font size=-2> 9-10</TD><TD><center><font size=-2>3.47</TD><TD><center><font size=-2>4.18</TD><TD><center><font size=-2>76.91</TD></TR>
 <TR><TD><center><font size=-2>8/2</TD><TD><center><font size=-2> 8- 9</TD><TD><center><font size=-2>2.38</TD><TD><center><font size=-2>2.71</TD><TD><center><font size=-2>78.14</TD></TR>
 <TR><TD><center><font size=-2>8/2</TD><TD><center><font size=-2> 7- 8</TD><TD><center><font size=-2>2.44</TD><TD><center><font size=-2>2.24</TD><TD><center><font size=-2>76.39</TD></TR>
 <TR><TD><center><font size=-2>8/2</TD><TD><center><font size=-2> 6- 7</TD><TD><center><font size=-2>3.14</TD><TD><center><font size=-2>3.29</TD><TD><center><font size=-2>76.24</TD></TR>
 <TR><TD><center><font size=-2>8/2</TD><TD><center><font size=-2> 5- 6</TD><TD><center><font size=-2>4.29</TD><TD><center><font size=-2>4.74</TD><TD><center><font size=-2>77.72</TD></TR>
 <TR><TD><center><font size=-2>8/2</TD><TD><center><font size=-2> 4- 5</TD><TD><center><font size=-2>2.19</TD><TD><center><font size=-2>2.10</TD><TD><center><font size=-2>79.34</TD></TR>
 <TR><TD><center><font size=-2>8/2</TD><TD><center><font size=-2> 3- 4</TD><TD><center><font size=-2>1.85</TD><TD><center><font size=-2>1.99</TD><TD><center><font size=-2>79.20</TD></TR>
 <TR><TD><center><font size=-2>8/2</TD><TD><center><font size=-2> 2- 3</TD><TD><center><font size=-2>2.06</TD><TD><center><font size=-2>1.97</TD><TD><center><font size=-2>81.30</TD></TR>
 <TR><TD><center><font size=-2>8/2</TD><TD><center><font size=-2> 1- 2</TD><TD><center><font size=-2>1.85</TD><TD><center><font size=-2>1.96</TD><TD><center><font size=-2>82.73</TD></TR>
 <TR><TD><center><font size=-2>8/2</TD><TD><center><font size=-2> 0- 1</TD><TD><center><font size=-2>2.57</TD><TD><center><font size=-2>2.84</TD><TD><center><font size=-2>81.68</TD></TR>
 <TR><TD><strong><font size=-2>DATO - 2015</TD><TD><strong><font size=-2>&nbsp;Tid&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;NO<sub>2 </sub>&nbsp;&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;NO<sub>x </sub>&nbsp;&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;O<sub>3 </sub>&nbsp;&nbsp;&nbsp;</TD></TR>
 <TR><TD><center><font size=-2>7/2</TD><TD><center><font size=-2> 23-24</TD><TD><center><font size=-2>3.05</TD><TD><center><font size=-2>3.08</TD><TD><center><font size=-2>78.53</TD></TR>
 <TR><TD><center><font size=-2>7/2</TD><TD><center><font size=-2> 22-23</TD><TD><center><font size=-2>2.93</TD><TD><center><font size=-2>3.35</TD><TD><center><font size=-2>77.60</TD></TR>
 <TR><TD><center><font size=-2>7/2</TD><TD><center><font size=-2> 21-22</TD><TD><center><font size=-2>2.50</TD><TD><center><font size=-2>2.56</TD><TD><center><font size=-2>77.62</TD></TR>
 <TR><TD><center><font size=-2>7/2</TD><TD><center><font size=-2> 20-21</TD><TD><center><font size=-2>2.55</TD><TD><center><font size=-2>3.30</TD><TD><center><font size=-2>77.38</TD></TR>
 <TR><TD><center><font size=-2>7/2</TD><TD><center><font size=-2> 19-20</TD><TD><center><font size=-2>2.41</TD><TD><center><font size=-2>3.06</TD><TD><center><font size=-2>77.85</TD></TR>
 <TR><TD><center><font size=-2>7/2</TD><TD><center><font size=-2> 18-19</TD><TD><center><font size=-2>3.18</TD><TD><center><font size=-2>3.99</TD><TD><center><font size=-2>76.87</TD></TR>
 <TR><TD><center><font size=-2>7/2</TD><TD><center><font size=-2> 17-18</TD><TD><center><font size=-2>4.16</TD><TD><center><font size=-2>4.73</TD><TD><center><font size=-2>76.45</TD></TR>
 <TR><TD><center><font size=-2>7/2</TD><TD><center><font size=-2> 16-17</TD><TD><center><font size=-2>3.25</TD><TD><center><font size=-2>3.76</TD><TD><center><font size=-2>78.90</TD></TR>
 <TR><TD><center><font size=-2>7/2</TD><TD><center><font size=-2> 15-16</TD><TD><center><font size=-2>3.05</TD><TD><center><font size=-2>4.13</TD><TD><center><font size=-2>79.97</TD></TR>
 <TR><TD><center><font size=-2>7/2</TD><TD><center><font size=-2> 14-15</TD><TD><center><font size=-2>3.60</TD><TD><center><font size=-2>4.67</TD><TD><center><font size=-2>80.83</TD></TR>
 <TR><TD><center><font size=-2>7/2</TD><TD><center><font size=-2> 13-14</TD><TD><center><font size=-2>5.19</TD><TD><center><font size=-2>6.55</TD><TD><center><font size=-2>79.13</TD></TR>
 <TR><TD><center><font size=-2>7/2</TD><TD><center><font size=-2> 12-13</TD><TD><center><font size=-2>5.61</TD><TD><center><font size=-2>6.68</TD><TD><center><font size=-2>77.02</TD></TR>
 <TR><TD><center><font size=-2>7/2</TD><TD><center><font size=-2> 11-12</TD><TD><center><font size=-2>5.81</TD><TD><center><font size=-2>7.21</TD><TD><center><font size=-2>76.13</TD></TR>
 <TR><TD><center><font size=-2>7/2</TD><TD><center><font size=-2> 10-11</TD><TD><center><font size=-2>5.12</TD><TD><center><font size=-2>6.41</TD><TD><center><font size=-2>75.65</TD></TR>
 <TR><TD><center><font size=-2>7/2</TD><TD><center><font size=-2> 9-10</TD><TD><center><font size=-2>4.25</TD><TD><center><font size=-2>5.56</TD><TD><center><font size=-2>76.28</TD></TR>
 <TR><TD><center><font size=-2>7/2</TD><TD><center><font size=-2> 8- 9</TD><TD><center><font size=-2>4.90</TD><TD><center><font size=-2>6.14</TD><TD><center><font size=-2>76.77</TD></TR>
 <TR><TD><center><font size=-2>7/2</TD><TD><center><font size=-2> 7- 8</TD><TD><center><font size=-2>2.62</TD><TD><center><font size=-2>3.24</TD><TD><center><font size=-2>78.51</TD></TR>
 <TR><TD><center><font size=-2>7/2</TD><TD><center><font size=-2> 6- 7</TD><TD><center><font size=-2>1.88</TD><TD><center><font size=-2>2.35</TD><TD><center><font size=-2>78.46</TD></TR>
 <TR><TD><center><font size=-2>7/2</TD><TD><center><font size=-2> 5- 6</TD><TD><center><font size=-2>3.57</TD><TD><center><font size=-2>5.87</TD><TD><center><font size=-2>76.32</TD></TR>
 <TR><TD><center><font size=-2>7/2</TD><TD><center><font size=-2> 4- 5</TD><TD><center><font size=-2>2.61</TD><TD><center><font size=-2>3.26</TD><TD><center><font size=-2>76.74</TD></TR>
 <TR><TD><center><font size=-2>7/2</TD><TD><center><font size=-2> 3- 4</TD><TD><center><font size=-2>3.22</TD><TD><center><font size=-2>3.78</TD><TD><center><font size=-2>71.07</TD></TR>
 <TR><TD><center><font size=-2>7/2</TD><TD><center><font size=-2> 2- 3</TD><TD><center><font size=-2>4.35</TD><TD><center><font size=-2>4.89</TD><TD><center><font size=-2>65.56</TD></TR>
 <TR><TD><center><font size=-2>7/2</TD><TD><center><font size=-2> 1- 2</TD><TD><center><font size=-2>4.64</TD><TD><center><font size=-2>5.19</TD><TD><center><font size=-2>59.39</TD></TR>
 <TR><TD><center><font size=-2>7/2</TD><TD><center><font size=-2> 0- 1</TD><TD><center><font size=-2>5.95</TD><TD><center><font size=-2>6.53</TD><TD><center><font size=-2>52.48</TD></TR>
 <TR><TD><strong><font size=-2>DATO - 2015</TD><TD><strong><font size=-2>&nbsp;Tid&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;NO<sub>2 </sub>&nbsp;&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;NO<sub>x </sub>&nbsp;&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;O<sub>3 </sub>&nbsp;&nbsp;&nbsp;</TD></TR>
 <TR><TD><center><font size=-2>6/2</TD><TD><center><font size=-2> 23-24</TD><TD><center><font size=-2>7.85</TD><TD><center><font size=-2>8.48</TD><TD><center><font size=-2>47.44</TD></TR>
 <TR><TD><center><font size=-2>6/2</TD><TD><center><font size=-2> 22-23</TD><TD><center><font size=-2>8.46</TD><TD><center><font size=-2>9.14</TD><TD><center><font size=-2>46.30</TD></TR>
 <TR><TD><center><font size=-2>6/2</TD><TD><center><font size=-2> 21-22</TD><TD><center><font size=-2>9.88</TD><TD><center><font size=-2>10.79</TD><TD><center><font size=-2>44.23</TD></TR>
 <TR><TD><center><font size=-2>6/2</TD><TD><center><font size=-2> 20-21</TD><TD><center><font size=-2>10.38</TD><TD><center><font size=-2>11.13</TD><TD><center><font size=-2>45.73</TD></TR>
 <TR><TD><center><font size=-2>6/2</TD><TD><center><font size=-2> 19-20</TD><TD><center><font size=-2>12.32</TD><TD><center><font size=-2>13.08</TD><TD><center><font size=-2>44.84</TD></TR>
 <TR><TD><center><font size=-2>6/2</TD><TD><center><font size=-2> 18-19</TD><TD><center><font size=-2>15.77</TD><TD><center><font size=-2>16.98</TD><TD><center><font size=-2>42.63</TD></TR>
 <TR><TD><center><font size=-2>6/2</TD><TD><center><font size=-2> 17-18</TD><TD><center><font size=-2>20.25</TD><TD><center><font size=-2>21.93</TD><TD><center><font size=-2>36.10</TD></TR>
 <TR><TD><center><font size=-2>6/2</TD><TD><center><font size=-2> 16-17</TD><TD><center><font size=-2>26.80</TD><TD><center><font size=-2>30.79</TD><TD><center><font size=-2>26.99</TD></TR>
 <TR><TD><center><font size=-2>6/2</TD><TD><center><font size=-2> 15-16</TD><TD><center><font size=-2>23.14</TD><TD><center><font size=-2>28.37</TD><TD><center><font size=-2>30.50</TD></TR>
 <TR><TD><center><font size=-2>6/2</TD><TD><center><font size=-2> 14-15</TD><TD><center><font size=-2>18.02</TD><TD><center><font size=-2>23.87</TD><TD><center><font size=-2>36.26</TD></TR>
 <TR><TD><center><font size=-2>6/2</TD><TD><center><font size=-2> 13-14</TD><TD><center><font size=-2>19.02</TD><TD><center><font size=-2>27.34</TD><TD><center><font size=-2>35.05</TD></TR>
 <TR><TD><center><font size=-2>6/2</TD><TD><center><font size=-2> 12-13</TD><TD><center><font size=-2>21.25</TD><TD><center><font size=-2>34.88</TD><TD><center><font size=-2>30.21</TD></TR>
 <TR><TD><center><font size=-2>6/2</TD><TD><center><font size=-2> 11-12</TD><TD><center><font size=-2>27.53</TD><TD><center><font size=-2>62.54</TD><TD><center><font size=-2>18.79</TD></TR>
 <TR><TD><center><font size=-2>6/2</TD><TD><center><font size=-2> 10-11</TD><TD><center><font size=-2>32.95</TD><TD><center><font size=-2>84.65</TD><TD><center><font size=-2>12.98</TD></TR>
 <TR><TD><center><font size=-2>6/2</TD><TD><center><font size=-2> 9-10</TD><TD><center><font size=-2>40.37</TD><TD><center><font size=-2>141.61</TD><TD><center><font size=-2>5.17</TD></TR>
 <TR><TD><center><font size=-2>6/2</TD><TD><center><font size=-2> 8- 9</TD><TD><center><font size=-2>53.50</TD><TD><center><font size=-2>234.11</TD><TD><center><font size=-2>1.69</TD></TR>
 <TR><TD><center><font size=-2>6/2</TD><TD><center><font size=-2> 7- 8</TD><TD><center><font size=-2>42.17</TD><TD><center><font size=-2>114.79</TD><TD><center><font size=-2>0.69</TD></TR>
 <TR><TD><center><font size=-2>6/2</TD><TD><center><font size=-2> 6- 7</TD><TD><center><font size=-2>36.12</TD><TD><center><font size=-2>72.21</TD><TD><center><font size=-2>0.58</TD></TR>
 <TR><TD><center><font size=-2>6/2</TD><TD><center><font size=-2> 5- 6</TD><TD><center><font size=-2>37.12</TD><TD><center><font size=-2>69.82</TD><TD><center><font size=-2>1.41</TD></TR>
 <TR><TD><center><font size=-2>6/2</TD><TD><center><font size=-2> 4- 5</TD><TD><center><font size=-2>32.56</TD><TD><center><font size=-2>39.65</TD><TD><center><font size=-2>6.16</TD></TR>
 <TR><TD><center><font size=-2>6/2</TD><TD><center><font size=-2> 3- 4</TD><TD><center><font size=-2>34.60</TD><TD><center><font size=-2>47.91</TD><TD><center><font size=-2>8.01</TD></TR>
 <TR><TD><center><font size=-2>6/2</TD><TD><center><font size=-2> 2- 3</TD><TD><center><font size=-2>28.22</TD><TD><center><font size=-2>36.85</TD><TD><center><font size=-2>9.57</TD></TR>
 <TR><TD><center><font size=-2>6/2</TD><TD><center><font size=-2> 1- 2</TD><TD><center><font size=-2>33.14</TD><TD><center><font size=-2>43.87</TD><TD><center><font size=-2>4.16</TD></TR>
 <TR><TD><center><font size=-2>6/2</TD><TD><center><font size=-2> 0- 1</TD><TD><center><font size=-2>37.79</TD><TD><center><font size=-2>53.12</TD><TD><center><font size=-2>5.65</TD></TR>
 <TR><TD><strong><font size=-2>DATO - 2015</TD><TD><strong><font size=-2>&nbsp;Tid&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;NO<sub>2 </sub>&nbsp;&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;NO<sub>x </sub>&nbsp;&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;O<sub>3 </sub>&nbsp;&nbsp;&nbsp;</TD></TR>
 <TR><TD><center><font size=-2>5/2</TD><TD><center><font size=-2> 23-24</TD><TD><center><font size=-2>36.05</TD><TD><center><font size=-2>47.86</TD><TD><center><font size=-2>7.24</TD></TR>
 <TR><TD><center><font size=-2>5/2</TD><TD><center><font size=-2> 22-23</TD><TD><center><font size=-2>40.50</TD><TD><center><font size=-2>64.61</TD><TD><center><font size=-2>5.36</TD></TR>
 <TR><TD><center><font size=-2>5/2</TD><TD><center><font size=-2> 21-22</TD><TD><center><font size=-2>40.74</TD><TD><center><font size=-2>71.77</TD><TD><center><font size=-2>5.18</TD></TR>
 <TR><TD><center><font size=-2>5/2</TD><TD><center><font size=-2> 20-21</TD><TD><center><font size=-2>41.83</TD><TD><center><font size=-2>89.95</TD><TD><center><font size=-2>7.69</TD></TR>
 <TR><TD><center><font size=-2>5/2</TD><TD><center><font size=-2> 19-20</TD><TD><center><font size=-2>50.63</TD><TD><center><font size=-2>109.22</TD><TD><center><font size=-2>2.01</TD></TR>
 <TR><TD><center><font size=-2>5/2</TD><TD><center><font size=-2> 18-19</TD><TD><center><font size=-2>50.35</TD><TD><center><font size=-2>86.67</TD><TD><center><font size=-2>2.70</TD></TR>
 <TR><TD><center><font size=-2>5/2</TD><TD><center><font size=-2> 17-18</TD><TD><center><font size=-2>47.37</TD><TD><center><font size=-2>91.05</TD><TD><center><font size=-2>4.59</TD></TR>
 <TR><TD><center><font size=-2>5/2</TD><TD><center><font size=-2> 16-17</TD><TD><center><font size=-2>27.06</TD><TD><center><font size=-2>38.92</TD><TD><center><font size=-2>22.12</TD></TR>
 <TR><TD><center><font size=-2>5/2</TD><TD><center><font size=-2> 15-16</TD><TD><center><font size=-2>20.97</TD><TD><center><font size=-2>33.81</TD><TD><center><font size=-2>28.37</TD></TR>
 <TR><TD><center><font size=-2>5/2</TD><TD><center><font size=-2> 14-15</TD><TD><center><font size=-2>23.58</TD><TD><center><font size=-2>46.80</TD><TD><center><font size=-2>26.66</TD></TR>
 <TR><TD><center><font size=-2>5/2</TD><TD><center><font size=-2> 13-14</TD><TD><center><font size=-2>17.46</TD><TD><center><font size=-2>33.90</TD><TD><center><font size=-2>34.08</TD></TR>
 <TR><TD><center><font size=-2>5/2</TD><TD><center><font size=-2> 12-13</TD><TD><center><font size=-2>11.76</TD><TD><center><font size=-2>23.94</TD><TD><center><font size=-2>39.02</TD></TR>
 <TR><TD><center><font size=-2>5/2</TD><TD><center><font size=-2> 11-12</TD><TD><center><font size=-2>11.67</TD><TD><center><font size=-2>24.57</TD><TD><center><font size=-2>39.43</TD></TR>
 <TR><TD><center><font size=-2>5/2</TD><TD><center><font size=-2> 10-11</TD><TD><center><font size=-2>19.04</TD><TD><center><font size=-2>39.47</TD><TD><center><font size=-2>32.42</TD></TR>
 <TR><TD><center><font size=-2>5/2</TD><TD><center><font size=-2> 9-10</TD><TD><center><font size=-2>28.98</TD><TD><center><font size=-2>48.80</TD><TD><center><font size=-2>25.25</TD></TR>
 <TR><TD><center><font size=-2>5/2</TD><TD><center><font size=-2> 8- 9</TD><TD><center><font size=-2>43.51</TD><TD><center><font size=-2>78.88</TD><TD><center><font size=-2>10.96</TD></TR>
 <TR><TD><center><font size=-2>5/2</TD><TD><center><font size=-2> 7- 8</TD><TD><center><font size=-2>46.93</TD><TD><center><font size=-2>83.43</TD><TD><center><font size=-2>10.49</TD></TR>
 <TR><TD><center><font size=-2>5/2</TD><TD><center><font size=-2> 6- 7</TD><TD><center><font size=-2>26.62</TD><TD><center><font size=-2>35.42</TD><TD><center><font size=-2>25.66</TD></TR>
 <TR><TD><center><font size=-2>5/2</TD><TD><center><font size=-2> 5- 6</TD><TD><center><font size=-2>9.53</TD><TD><center><font size=-2>10.63</TD><TD><center><font size=-2>42.51</TD></TR>
 <TR><TD><center><font size=-2>5/2</TD><TD><center><font size=-2> 4- 5</TD><TD><center><font size=-2>6.93</TD><TD><center><font size=-2>8.90</TD><TD><center><font size=-2>46.99</TD></TR>
 <TR><TD><center><font size=-2>5/2</TD><TD><center><font size=-2> 3- 4</TD><TD><center><font size=-2>6.56</TD><TD><center><font size=-2>7.01</TD><TD><center><font size=-2>46.34</TD></TR>
 <TR><TD><center><font size=-2>5/2</TD><TD><center><font size=-2> 2- 3</TD><TD><center><font size=-2>4.69</TD><TD><center><font size=-2>4.94</TD><TD><center><font size=-2>48.06</TD></TR>
 <TR><TD><center><font size=-2>5/2</TD><TD><center><font size=-2> 1- 2</TD><TD><center><font size=-2>4.93</TD><TD><center><font size=-2>4.94</TD><TD><center><font size=-2>48.11</TD></TR>
 <TR><TD><center><font size=-2>5/2</TD><TD><center><font size=-2> 0- 1</TD><TD><center><font size=-2>6.14</TD><TD><center><font size=-2>6.32</TD><TD><center><font size=-2>46.94</TD></TR>
 <TR><TD><strong><font size=-2>DATO - 2015</TD><TD><strong><font size=-2>&nbsp;Tid&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;NO<sub>2 </sub>&nbsp;&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;NO<sub>x </sub>&nbsp;&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;O<sub>3 </sub>&nbsp;&nbsp;&nbsp;</TD></TR>
 <TR><TD><center><font size=-2>4/2</TD><TD><center><font size=-2> 23-24</TD><TD><center><font size=-2>10.04</TD><TD><center><font size=-2>11.29</TD><TD><center><font size=-2>40.88</TD></TR>
 <TR><TD><center><font size=-2>4/2</TD><TD><center><font size=-2> 22-23</TD><TD><center><font size=-2>14.32</TD><TD><center><font size=-2>16.27</TD><TD><center><font size=-2>35.97</TD></TR>
 <TR><TD><center><font size=-2>4/2</TD><TD><center><font size=-2> 21-22</TD><TD><center><font size=-2>14.13</TD><TD><center><font size=-2>15.96</TD><TD><center><font size=-2>35.61</TD></TR>
 <TR><TD><center><font size=-2>4/2</TD><TD><center><font size=-2> 20-21</TD><TD><center><font size=-2>15.99</TD><TD><center><font size=-2>18.68</TD><TD><center><font size=-2>34.52</TD></TR>
 <TR><TD><center><font size=-2>4/2</TD><TD><center><font size=-2> 19-20</TD><TD><center><font size=-2>16.74</TD><TD><center><font size=-2>19.66</TD><TD><center><font size=-2>35.61</TD></TR>
 <TR><TD><center><font size=-2>4/2</TD><TD><center><font size=-2> 18-19</TD><TD><center><font size=-2>17.30</TD><TD><center><font size=-2>20.26</TD><TD><center><font size=-2>35.62</TD></TR>
 <TR><TD><center><font size=-2>4/2</TD><TD><center><font size=-2> 17-18</TD><TD><center><font size=-2>18.50</TD><TD><center><font size=-2>22.16</TD><TD><center><font size=-2>34.99</TD></TR>
 <TR><TD><center><font size=-2>4/2</TD><TD><center><font size=-2> 16-17</TD><TD><center><font size=-2>19.88</TD><TD><center><font size=-2>24.49</TD><TD><center><font size=-2>33.77</TD></TR>
 <TR><TD><center><font size=-2>4/2</TD><TD><center><font size=-2> 15-16</TD><TD><center><font size=-2>22.88</TD><TD><center><font size=-2>31.00</TD><TD><center><font size=-2>31.07</TD></TR>
 <TR><TD><center><font size=-2>4/2</TD><TD><center><font size=-2> 14-15</TD><TD><center><font size=-2>21.29</TD><TD><center><font size=-2>29.37</TD><TD><center><font size=-2>32.49</TD></TR>
 <TR><TD><center><font size=-2>4/2</TD><TD><center><font size=-2> 13-14</TD><TD><center><font size=-2>20.80</TD><TD><center><font size=-2>29.06</TD><TD><center><font size=-2>33.02</TD></TR>
 <TR><TD><center><font size=-2>4/2</TD><TD><center><font size=-2> 12-13</TD><TD><center><font size=-2>20.04</TD><TD><center><font size=-2>27.34</TD><TD><center><font size=-2>34.59</TD></TR>
 <TR><TD><center><font size=-2>4/2</TD><TD><center><font size=-2> 11-12</TD><TD><center><font size=-2>19.61</TD><TD><center><font size=-2>27.36</TD><TD><center><font size=-2>35.49</TD></TR>
 <TR><TD><center><font size=-2>4/2</TD><TD><center><font size=-2> 10-11</TD><TD><center><font size=-2>21.58</TD><TD><center><font size=-2>30.85</TD><TD><center><font size=-2>33.25</TD></TR>
 <TR><TD><center><font size=-2>4/2</TD><TD><center><font size=-2> 9-10</TD><TD><center><font size=-2>23.14</TD><TD><center><font size=-2>31.74</TD><TD><center><font size=-2>31.24</TD></TR>
 <TR><TD><center><font size=-2>4/2</TD><TD><center><font size=-2> 8- 9</TD><TD><center><font size=-2>21.52</TD><TD><center><font size=-2>27.25</TD><TD><center><font size=-2>33.34</TD></TR>
 <TR><TD><center><font size=-2>4/2</TD><TD><center><font size=-2> 7- 8</TD><TD><center><font size=-2>20.32</TD><TD><center><font size=-2>25.47</TD><TD><center><font size=-2>33.54</TD></TR>
 <TR><TD><center><font size=-2>4/2</TD><TD><center><font size=-2> 6- 7</TD><TD><center><font size=-2>14.21</TD><TD><center><font size=-2>16.54</TD><TD><center><font size=-2>38.16</TD></TR>
 <TR><TD><center><font size=-2>4/2</TD><TD><center><font size=-2> 5- 6</TD><TD><center><font size=-2>9.10</TD><TD><center><font size=-2>9.19</TD><TD><center><font size=-2>42.44</TD></TR>
 <TR><TD><center><font size=-2>4/2</TD><TD><center><font size=-2> 4- 5</TD><TD><center><font size=-2>12.09</TD><TD><center><font size=-2>13.08</TD><TD><center><font size=-2>37.36</TD></TR>
 <TR><TD><center><font size=-2>4/2</TD><TD><center><font size=-2> 3- 4</TD><TD><center><font size=-2>10.65</TD><TD><center><font size=-2>10.89</TD><TD><center><font size=-2>39.76</TD></TR>
 <TR><TD><center><font size=-2>4/2</TD><TD><center><font size=-2> 2- 3</TD><TD><center><font size=-2>8.70</TD><TD><center><font size=-2>8.82</TD><TD><center><font size=-2>42.16</TD></TR>
 <TR><TD><center><font size=-2>4/2</TD><TD><center><font size=-2> 1- 2</TD><TD><center><font size=-2>5.19</TD><TD><center><font size=-2>4.78</TD><TD><center><font size=-2>47.72</TD></TR>
 <TR><TD><center><font size=-2>4/2</TD><TD><center><font size=-2> 0- 1</TD><TD><center><font size=-2>5.88</TD><TD><center><font size=-2>5.63</TD><TD><center><font size=-2>46.82</TD></TR>
 <TR><TD><strong><font size=-2>DATO - 2015</TD><TD><strong><font size=-2>&nbsp;Tid&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;NO<sub>2 </sub>&nbsp;&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;NO<sub>x </sub>&nbsp;&nbsp;&nbsp;</TD><TD><center><strong><font size=-2 color=\"#000000\">&nbsp;&nbsp;&nbsp;O<sub>3 </sub>&nbsp;&nbsp;&nbsp;</TD></TR>
 <TR><TD><center><font size=-2>3/2</TD><TD><center><font size=-2> 23-24</TD><TD><center><font size=-2>7.08</TD><TD><center><font size=-2>7.45</TD><TD><center><font size=-2>45.36</TD></TR>
 <TR><TD><center><font size=-2>3/2</TD><TD><center><font size=-2> 22-23</TD><TD><center><font size=-2>9.65</TD><TD><center><font size=-2>10.73</TD><TD><center><font size=-2>43.43</TD></TR>
 <TR><TD><center><font size=-2>3/2</TD><TD><center><font size=-2> 21-22</TD><TD><center><font size=-2>9.64</TD><TD><center><font size=-2>11.22</TD><TD><center><font size=-2>43.82</TD></TR>
 <TR><TD><center><font size=-2>3/2</TD><TD><center><font size=-2> 20-21</TD><TD><center><font size=-2>18.53</TD><TD><center><font size=-2>21.80</TD><TD><center><font size=-2>34.98</TD></TR>
 <TR><TD><center><font size=-2>3/2</TD><TD><center><font size=-2> 19-20</TD><TD><center><font size=-2>21.61</TD><TD><center><font size=-2>25.71</TD><TD><center><font size=-2>30.86</TD></TR>
 <TR><TD><center><font size=-2>3/2</TD><TD><center><font size=-2> 18-19</TD><TD><center><font size=-2>21.56</TD><TD><center><font size=-2>25.34</TD><TD><center><font size=-2>32.22</TD></TR>
 <TR><TD><center><font size=-2>3/2</TD><TD><center><font size=-2> 17-18</TD><TD><center><font size=-2>19.43</TD><TD><center><font size=-2>23.35</TD><TD><center><font size=-2>35.18</TD></TR>
 <TR><TD><center><font size=-2>3/2</TD><TD><center><font size=-2> 16-17</TD><TD><center><font size=-2>18.70</TD><TD><center><font size=-2>22.95</TD><TD><center><font size=-2>34.70</TD></TR>
 <TR><TD><center><font size=-2>3/2</TD><TD><center><font size=-2> 15-16</TD><TD><center><font size=-2>19.44</TD><TD><center><font size=-2>25.46</TD><TD><center><font size=-2>33.02</TD></TR>
 <TR><TD><center><font size=-2>3/2</TD><TD><center><font size=-2> 14-15</TD><TD><center><font size=-2>19.21</TD><TD><center><font size=-2>27.44</TD><TD><center><font size=-2>33.36</TD></TR>
 <TR><TD><center><font size=-2>3/2</TD><TD><center><font size=-2> 13-14</TD><TD><center><font size=-2>15.01</TD><TD><center><font size=-2>23.90</TD><TD><center><font size=-2>37.24</TD></TR>
 <TR><TD><center><font size=-2>3/2</TD><TD><center><font size=-2> 12-13</TD><TD><center><font size=-2>16.08</TD><TD><center><font size=-2>24.61</TD><TD><center><font size=-2>36.07</TD></TR>
 <TR><TD><center><font size=-2>3/2</TD><TD><center><font size=-2> 11-12</TD><TD><center><font size=-2>16.59</TD><TD><center><font size=-2>24.67</TD><TD><center><font size=-2>35.83</TD></TR>
 <TR><TD><center><font size=-2>3/2</TD><TD><center><font size=-2> 10-11</TD><TD><center><font size=-2>23.27</TD><TD><center><font size=-2>35.02</TD><TD><center><font size=-2>29.71</TD></TR>
 <TR><TD><center><font size=-2>3/2</TD><TD><center><font size=-2> 9-10</TD><TD><center><font size=-2>17.49</TD><TD><center><font size=-2>25.05</TD><TD><center><font size=-2>33.10</TD></TR>
 <TR><TD><center><font size=-2>3/2</TD><TD><center><font size=-2> 8- 9</TD><TD><center><font size=-2>23.54</TD><TD><center><font size=-2>30.64</TD><TD><center><font size=-2>27.70</TD></TR>
 <TR><TD><center><font size=-2>3/2</TD><TD><center><font size=-2> 7- 8</TD><TD><center><font size=-2>24.84</TD><TD><center><font size=-2>32.84</TD><TD><center><font size=-2>27.94</TD></TR>
 <TR><TD><center><font size=-2>3/2</TD><TD><center><font size=-2> 6- 7</TD><TD><center><font size=-2>16.74</TD><TD><center><font size=-2>20.60</TD><TD><center><font size=-2>36.12</TD></TR>
 <TR><TD><center><font size=-2>3/2</TD><TD><center><font size=-2> 5- 6</TD><TD><center><font size=-2>11.37</TD><TD><center><font size=-2>13.28</TD><TD><center><font size=-2>42.48</TD></TR>
 <TR><TD><center><font size=-2>3/2</TD><TD><center><font size=-2> 4- 5</TD><TD><center><font size=-2>8.12</TD><TD><center><font size=-2>9.23</TD><TD><center><font size=-2>46.44</TD></TR>
 <TR><TD><center><font size=-2>3/2</TD><TD><center><font size=-2> 3- 4</TD><TD><center><font size=-2>3.66</TD><TD><center><font size=-2>4.16</TD><TD><center><font size=-2>53.39</TD></TR>
 <TR><TD><center><font size=-2>3/2</TD><TD><center><font size=-2> 2- 3</TD><TD><center><font size=-2>2.69</TD><TD><center><font size=-2>3.08</TD><TD><center><font size=-2>54.91</TD></TR>
 <TR><TD><center><font size=-2>3/2</TD><TD><center><font size=-2> 1- 2</TD><TD><center><font size=-2>3.35</TD><TD><center><font size=-2>3.49</TD><TD><center><font size=-2>57.56</TD></TR>
 <TR><TD><center><font size=-2>3/2</TD><TD><center><font size=-2> 0- 1</TD><TD><center><font size=-2>6.10</TD><TD><center><font size=-2>6.37</TD><TD><center><font size=-2>58.04</TD></TR>
 
 </TABLE>
 
 </BODY>
 
 
 </HTML>")(res)
	}
}