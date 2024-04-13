class_name ColorMapViridis
extends ColorMap


func _init(color_steps := 0) -> void:
	colors = [
		Color(0.26700401, 0.00487433, 0.32941519),
		Color(0.26851048, 0.00960483, 0.33542652),
		Color(0.26994384, 0.01462494, 0.34137895),
		Color(0.27130489, 0.01994186, 0.34726862),
		Color(0.27259384, 0.02556309, 0.35309303),
		Color(0.27380934, 0.03149748, 0.35885256),
		Color(0.27495242, 0.03775181, 0.36454323),
		Color(0.27602238, 0.04416723, 0.37016418),
		Color(0.27701840, 0.05034437, 0.37571452),
		Color(0.27794143, 0.05632444, 0.38119074),
		Color(0.27879067, 0.06214536, 0.38659204),
		Color(0.27956550, 0.06783587, 0.39191723),
		Color(0.28026658, 0.07341724, 0.39716349),
		Color(0.28089358, 0.07890703, 0.40232944),
		Color(0.28144581, 0.08431970, 0.40741404),
		Color(0.28192358, 0.08966622, 0.41241521),
		Color(0.28232739, 0.09495545, 0.41733086),
		Color(0.28265633, 0.10019576, 0.42216032),
		Color(0.28291049, 0.10539345, 0.42690202),
		Color(0.28309095, 0.11055307, 0.43155375),
		Color(0.28319704, 0.11567966, 0.43611482),
		Color(0.28322882, 0.12077701, 0.44058404),
		Color(0.28318684, 0.12584799, 0.44496000),
		Color(0.28307200, 0.13089477, 0.44924127),
		Color(0.28288389, 0.13592005, 0.45342734),
		Color(0.28262297, 0.14092556, 0.45751726),
		Color(0.28229037, 0.14591233, 0.46150995),
		Color(0.28188676, 0.15088147, 0.46540474),
		Color(0.28141228, 0.15583425, 0.46920128),
		Color(0.28086773, 0.16077132, 0.47289909),
		Color(0.28025468, 0.16569272, 0.47649762),
		Color(0.27957399, 0.17059884, 0.47999675),
		Color(0.27882618, 0.17549020, 0.48339654),
		Color(0.27801236, 0.18036684, 0.48669702),
		Color(0.27713437, 0.18522836, 0.48989831),
		Color(0.27619376, 0.19007447, 0.49300074),
		Color(0.27519116, 0.19490540, 0.49600488),
		Color(0.27412802, 0.19972086, 0.49891131),
		Color(0.27300596, 0.20452049, 0.50172076),
		Color(0.27182812, 0.20930306, 0.50443413),
		Color(0.27059473, 0.21406899, 0.50705243),
		Color(0.26930756, 0.21881782, 0.50957678),
		Color(0.26796846, 0.22354911, 0.51200840),
		Color(0.26657984, 0.22826210, 0.51434870),
		Color(0.26514450, 0.23295593, 0.51659930),
		Color(0.26366320, 0.23763078, 0.51876163),
		Color(0.26213801, 0.24228619, 0.52083736),
		Color(0.26057103, 0.24692170, 0.52282822),
		Color(0.25896451, 0.25153685, 0.52473609),
		Color(0.25732244, 0.25613040, 0.52656332),
		Color(0.25564519, 0.26070284, 0.52831152),
		Color(0.25393498, 0.26525384, 0.52998273),
		Color(0.25219404, 0.26978306, 0.53157905),
		Color(0.25042462, 0.27429024, 0.53310261),
		Color(0.24862899, 0.27877509, 0.53455561),
		Color(0.24681140, 0.28323662, 0.53594093),
		Color(0.24497208, 0.28767547, 0.53726018),
		Color(0.24311324, 0.29209154, 0.53851561),
		Color(0.24123708, 0.29648471, 0.53970946),
		Color(0.23934575, 0.30085494, 0.54084398),
		Color(0.23744138, 0.30520222, 0.54192140),
		Color(0.23552606, 0.30952657, 0.54294396),
		Color(0.23360277, 0.31382773, 0.54391424),
		Color(0.23167350, 0.31810580, 0.54483444),
		Color(0.22973926, 0.32236127, 0.54570633),
		Color(0.22780192, 0.32659432, 0.54653200),
		Color(0.22586330, 0.33080515, 0.54731353),
		Color(0.22392515, 0.33499400, 0.54805291),
		Color(0.22198915, 0.33916114, 0.54875211),
		Color(0.22005691, 0.34330688, 0.54941304),
		Color(0.21812995, 0.34743154, 0.55003755),
		Color(0.21620971, 0.35153548, 0.55062743),
		Color(0.21429757, 0.35561907, 0.55118440),
		Color(0.21239477, 0.35968273, 0.55171011),
		Color(0.21050310, 0.36372671, 0.55220646),
		Color(0.20862342, 0.36775151, 0.55267486),
		Color(0.20675628, 0.37175775, 0.55311653),
		Color(0.20490257, 0.37574589, 0.55353282),
		Color(0.20306309, 0.37971644, 0.55392505),
		Color(0.20123854, 0.38366989, 0.55429441),
		Color(0.19942950, 0.38760678, 0.55464205),
		Color(0.19763650, 0.39152762, 0.55496905),
		Color(0.19585993, 0.39543297, 0.55527637),
		Color(0.19410009, 0.39932336, 0.55556494),
		Color(0.19235719, 0.40319934, 0.55583559),
		Color(0.19063135, 0.40706148, 0.55608907),
		Color(0.18892259, 0.41091033, 0.55632606),
		Color(0.18723083, 0.41474645, 0.55654717),
		Color(0.18555593, 0.41857040, 0.55675292),
		Color(0.18389763, 0.42238275, 0.55694377),
		Color(0.18225561, 0.42618405, 0.55712010),
		Color(0.18062949, 0.42997486, 0.55728221),
		Color(0.17901879, 0.43375572, 0.55743035),
		Color(0.17742298, 0.43752720, 0.55756466),
		Color(0.17584148, 0.44128981, 0.55768526),
		Color(0.17427363, 0.44504410, 0.55779216),
		Color(0.17271876, 0.44879060, 0.55788532),
		Color(0.17117615, 0.45252980, 0.55796464),
		Color(0.16964573, 0.45626209, 0.55803034),
		Color(0.16812641, 0.45998802, 0.55808199),
		Color(0.16661710, 0.46370813, 0.55811913),
		Color(0.16511703, 0.46742290, 0.55814141),
		Color(0.16362543, 0.47113278, 0.55814842),
		Color(0.16214155, 0.47483821, 0.55813967),
		Color(0.16066467, 0.47853961, 0.55811466),
		Color(0.15919413, 0.48223740, 0.55807280),
		Color(0.15772933, 0.48593197, 0.55801347),
		Color(0.15626973, 0.48962370, 0.55793600),
		Color(0.15481488, 0.49331293, 0.55783967),
		Color(0.15336445, 0.49700003, 0.55772371),
		Color(0.15191820, 0.50068529, 0.55758733),
		Color(0.15047605, 0.50436904, 0.55742968),
		Color(0.14903918, 0.50805136, 0.55725050),
		Color(0.14760731, 0.51173263, 0.55704861),
		Color(0.14618026, 0.51541316, 0.55682271),
		Color(0.14475863, 0.51909319, 0.55657181),
		Color(0.14334327, 0.52277292, 0.55629491),
		Color(0.14193527, 0.52645254, 0.55599097),
		Color(0.14053599, 0.53013219, 0.55565893),
		Color(0.13914708, 0.53381201, 0.55529773),
		Color(0.13777048, 0.53749213, 0.55490625),
		Color(0.13640850, 0.54117264, 0.55448339),
		Color(0.13506561, 0.54485335, 0.55402906),
		Color(0.13374299, 0.54853458, 0.55354108),
		Color(0.13244401, 0.55221637, 0.55301828),
		Color(0.13117249, 0.55589872, 0.55245948),
		Color(0.12993270, 0.55958162, 0.55186354),
		Color(0.12872938, 0.56326503, 0.55122927),
		Color(0.12756771, 0.56694891, 0.55055551),
		Color(0.12645338, 0.57063316, 0.54984110),
		Color(0.12539383, 0.57431754, 0.54908564),
		Color(0.12439474, 0.57800205, 0.54828740),
		Color(0.12346281, 0.58168661, 0.54744498),
		Color(0.12260562, 0.58537105, 0.54655722),
		Color(0.12183122, 0.58905521, 0.54562298),
		Color(0.12114807, 0.59273889, 0.54464114),
		Color(0.12056501, 0.59642187, 0.54361058),
		Color(0.12009154, 0.60010387, 0.54253043),
		Color(0.11973756, 0.60378459, 0.54139999),
		Color(0.11951163, 0.60746388, 0.54021751),
		Color(0.11942341, 0.61114146, 0.53898192),
		Color(0.11948255, 0.61481702, 0.53769219),
		Color(0.11969858, 0.61849025, 0.53634733),
		Color(0.12008079, 0.62216081, 0.53494633),
		Color(0.12063824, 0.62582833, 0.53348834),
		Color(0.12137972, 0.62949242, 0.53197275),
		Color(0.12231244, 0.63315277, 0.53039808),
		Color(0.12344358, 0.63680899, 0.52876343),
		Color(0.12477953, 0.64046069, 0.52706792),
		Color(0.12632581, 0.64410744, 0.52531069),
		Color(0.12808703, 0.64774881, 0.52349092),
		Color(0.13006688, 0.65138436, 0.52160791),
		Color(0.13226797, 0.65501363, 0.51966086),
		Color(0.13469183, 0.65863619, 0.51764880),
		Color(0.13733921, 0.66225157, 0.51557101),
		Color(0.14020991, 0.66585927, 0.51342680),
		Color(0.14330291, 0.66945881, 0.51121549),
		Color(0.14661640, 0.67304968, 0.50893644),
		Color(0.15014782, 0.67663139, 0.50658890),
		Color(0.15389405, 0.68020343, 0.50417217),
		Color(0.15785146, 0.68376525, 0.50168574),
		Color(0.16201598, 0.68731632, 0.49912906),
		Color(0.16638320, 0.69085611, 0.49650163),
		Color(0.17094840, 0.69438405, 0.49380294),
		Color(0.17570671, 0.69789960, 0.49103252),
		Color(0.18065314, 0.70140222, 0.48818938),
		Color(0.18578266, 0.70489133, 0.48527326),
		Color(0.19109018, 0.70836635, 0.48228395),
		Color(0.19657063, 0.71182668, 0.47922108),
		Color(0.20221902, 0.71527175, 0.47608431),
		Color(0.20803045, 0.71870095, 0.47287330),
		Color(0.21400015, 0.72211371, 0.46958774),
		Color(0.22012381, 0.72550945, 0.46622638),
		Color(0.22639690, 0.72888753, 0.46278934),
		Color(0.23281498, 0.73224735, 0.45927675),
		Color(0.23937390, 0.73558828, 0.45568838),
		Color(0.24606968, 0.73890972, 0.45202405),
		Color(0.25289851, 0.74221104, 0.44828355),
		Color(0.25985676, 0.74549162, 0.44446673),
		Color(0.26694127, 0.74875084, 0.44057284),
		Color(0.27414922, 0.75198807, 0.43660090),
		Color(0.28147681, 0.75520266, 0.43255207),
		Color(0.28892102, 0.75839399, 0.42842626),
		Color(0.29647899, 0.76156142, 0.42422341),
		Color(0.30414796, 0.76470433, 0.41994346),
		Color(0.31192534, 0.76782207, 0.41558638),
		Color(0.31980860, 0.77091403, 0.41115215),
		Color(0.32779580, 0.77397953, 0.40664011),
		Color(0.33588539, 0.77701790, 0.40204917),
		Color(0.34407411, 0.78002855, 0.39738103),
		Color(0.35235985, 0.78301086, 0.39263579),
		Color(0.36074053, 0.78596419, 0.38781353),
		Color(0.36921420, 0.78888793, 0.38291438),
		Color(0.37777892, 0.79178146, 0.37793850),
		Color(0.38643282, 0.79464415, 0.37288606),
		Color(0.39517408, 0.79747541, 0.36775726),
		Color(0.40400101, 0.80027461, 0.36255223),
		Color(0.41291350, 0.80304099, 0.35726893),
		Color(0.42190813, 0.80577412, 0.35191009),
		Color(0.43098317, 0.80847343, 0.34647607),
		Color(0.44013691, 0.81113836, 0.34096730),
		Color(0.44936763, 0.81376835, 0.33538426),
		Color(0.45867362, 0.81636288, 0.32972749),
		Color(0.46805314, 0.81892143, 0.32399761),
		Color(0.47750446, 0.82144351, 0.31819529),
		Color(0.48702580, 0.82392862, 0.31232133),
		Color(0.49661536, 0.82637633, 0.30637661),
		Color(0.50627130, 0.82878621, 0.30036211),
		Color(0.51599182, 0.83115784, 0.29427888),
		Color(0.52577622, 0.83349064, 0.28812650),
		Color(0.53562110, 0.83578452, 0.28190832),
		Color(0.54552440, 0.83803918, 0.27562602),
		Color(0.55548397, 0.84025437, 0.26928147),
		Color(0.56549760, 0.84242990, 0.26287683),
		Color(0.57556297, 0.84456561, 0.25641457),
		Color(0.58567772, 0.84666139, 0.24989748),
		Color(0.59583934, 0.84871722, 0.24332878),
		Color(0.60604528, 0.85073310, 0.23671214),
		Color(0.61629283, 0.85270912, 0.23005179),
		Color(0.62657923, 0.85464543, 0.22335258),
		Color(0.63690157, 0.85654226, 0.21662012),
		Color(0.64725685, 0.85839991, 0.20986086),
		Color(0.65764197, 0.86021878, 0.20308229),
		Color(0.66805369, 0.86199932, 0.19629307),
		Color(0.67848868, 0.86374211, 0.18950326),
		Color(0.68894351, 0.86544779, 0.18272455),
		Color(0.69941463, 0.86711711, 0.17597055),
		Color(0.70989842, 0.86875092, 0.16925712),
		Color(0.72039115, 0.87035015, 0.16260273),
		Color(0.73088902, 0.87191584, 0.15602894),
		Color(0.74138803, 0.87344918, 0.14956101),
		Color(0.75188414, 0.87495143, 0.14322828),
		Color(0.76237342, 0.87642392, 0.13706449),
		Color(0.77285183, 0.87786808, 0.13110864),
		Color(0.78331535, 0.87928545, 0.12540538),
		Color(0.79375994, 0.88067763, 0.12000532),
		Color(0.80418159, 0.88204632, 0.11496505),
		Color(0.81457634, 0.88339329, 0.11034678),
		Color(0.82494028, 0.88472036, 0.10621724),
		Color(0.83526959, 0.88602943, 0.10264590),
		Color(0.84556056, 0.88732243, 0.09970219),
		Color(0.85580960, 0.88860134, 0.09745186),
		Color(0.86601325, 0.88986815, 0.09595277),
		Color(0.87616824, 0.89112487, 0.09525046),
		Color(0.88627146, 0.89237353, 0.09537439),
		Color(0.89632002, 0.89361614, 0.09633538),
		Color(0.90631121, 0.89485467, 0.09812496),
		Color(0.91624212, 0.89609127, 0.10071680),
		Color(0.92610579, 0.89732977, 0.10407067),
		Color(0.93590444, 0.89857040, 0.10813094),
		Color(0.94563626, 0.89981500, 0.11283773),
		Color(0.95529972, 0.90106534, 0.11812832),
		Color(0.96489353, 0.90232311, 0.12394051),
		Color(0.97441665, 0.90358991, 0.13021494),
		Color(0.98386829, 0.90486726, 0.13689671),
		Color(0.99324789, 0.90615657, 0.14393620),
	]
	underflow = Color(0.3, 0.3, 0.3)
	overflow = Color(0.7, 0.7, 0.7)
	super(color_steps)
