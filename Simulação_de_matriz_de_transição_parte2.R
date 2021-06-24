###### Agoritmo para a simulação de matriz de transição para a Parte 2 ####################
library("seqinr")
#primeiro banco
#Síndrome respiratória aguda grave coronavírus 2 isolado SARS-CoV-2 / humano / USA / NY-CDC-ASC210039297 / 2021, genoma completo
x1 = "taaaggttta taccttccca ggtaacaaac caaccaactt tcgatctctt gtagatctgt 
       61 tctctaaacg aactttaaaa tctgtgtggc tgtcactcgg ctgcatgctt agtgcactca 
      121 cgcagtataa ttaataacta attactgtcg ttgacaggac acgagtaact cgtctatctt 
      181 ctgcaggctg cttacggttt cgtccgtgtt gcagccgatc atcagcacat ctaggttttg 
      241 tccgggtgtg accgaaaggt aagatggaga gccttgtccc tggtttcaac gagaaaacac 
      301 acgtccaact cagtttgcct gttttacagg ttcgcgacgt gctcgtacgt ggctttggag 
      361 actccgtgga ggaggtctta tcagaggcac gtcaacatct taaagatggc acttgtggct 
      421 tagtagaagt tgaaaaaggc gttttgcctc aacttgaaca gccctatgtg ttcatcaaac 
      481gttcggatgc tcgaactgca cctcatggtc atgttatggt tgagctggta gcagaactcg 
      541 aaggcattca gtacggtcgt agtggtgaga cacttggtgt ccttgtccct catgtgggcg 
      601 aaataccagt ggcttaccgc aaggttcttc ttcgtaagaa cggtaataaa ggagctggtg 
      661 gccatagtta cggcgccgat ctaaagtcat ttgacttagg cgacgagctt ggcactgatc 
      721 cttatgaaga ttttcaagaa aactggaaca ctaaacatag cagtggtgtt acccgtgaac 
      781 tcatgcgtga gcttaacgga ggggcataca ctcgctatgt cgataacaac ttctgtggcc 
      841 ctgatggcta ccctcttgag tgcattaaag accttctagc acgtgctggt aaagcttcat 
      901 gcactttgtc cgaacaactg gactttattg acactaagag gggtgtatac tgctgccgtg 
      961aacatgagca tgaaattgct tggtacacgg aacgttctga aaagagctat gaattgcaga 
     1021 caccttttga aattaaattg gcaaagaaat ttgacatctt caatggggaa tgtccaaatt 
     1081 ttgtatttcc cttaaattcc ataatcaaga ctattcaacc aagggttgaa aagaaaaagc 
     1141 ttgatggctt tatgggtaga attcgatctg tctatccagt tgcgtcacca aatgaatgca 
     1201 accaaatgtg cctttcaact ctcatgaagt gtgatcattg tggtgaaact tcatggcaga 
     1261 cgggcgattt tgttaaagcc acttgcgaat tttgtggcac tgagaatttg actaaagaag 
     1321 gtgccactac ttgtggttac ttaccccaaa atgctgttgt taaaatttat tgtccagcat 
     1381 gtcacaattc agaagtagga cctgagcata gtcttgccga ataccataat gaatctggct 
     1441tgaaaaccat tcttcgtaag ggtggtcgca ctattgcctt tggaggctgt gtgttctctt 
     1501 atgttggttg ccataacaag tgtgcctatt gggttccacg tgctagcgct aacataggtt 
     1561 gtaaccatac aggtgttgtt ggagaaggtt ccgaaggtct taatgacaac cttcttgaaa 
     1621 tactccaaaa agagaaagtc aacatcaata ttgttggtga ctttaaactt aatgaagaga 
     1681 tcgccattat tttggcatct ttttctgctt ccacaagtgc ttttgtggaa actgtgaaag 
     1741 gtttggatta taaagcattc aaacaaattg ttgaatcctg tggtaatttt aaagttacaa 
     1801 aaggaaaagc taaaaaaggt gcctggaata ttggtgaaca gaaatcaata ctgagtcctc 
     1861 tttatgcatt tgcatcagag gctgctcgtg ttgtacgatc aattttctcc cgcactcttg 
     1921aaactgctca aaattctgtg cgtgttttac agaaggccgc tataacaata ctagatggaa 
     1981 tttcacagta ttcactgaga ctcattgatg ctatgatgtt cacatctgat ttggctacta 
     2041 acaatctagt tgtaatggcc tacattacag gtggtgttgt tcagttgact tcgcagtggc 
     2101 taactaacat ctttggcact gtttatgaaa aactcaaacc cgtccttgat tggcttgaag 
     2161 agaagtttaa ggaaggtgta gagtttctta gagacggttg ggaaattgtt aaatttatct 
     2221 caacctgtgc ttgtgaaatt gtcggtggac aaattgtcac ctgtgcaaag gaaattaagg 
     2281 agagtgttca gacattcttt aagcttgtaa ataaattttt ggctttgtgt gctgactcta 
     2341 tcattattgg tggagctaaa cttaaagcct tgaatttagg tgaaacattt gtcacgcact 
     2401caaagggatt gtacagaaag tgtgttaaat ccagagaaga aactggccta ctcatgcctc 
     2461 taaaagcccc aaaagaaatt atcttcttag agggagaaac acttcccaca gaagtgttaa 
     2521 cagaggaagt tgtcttgaaa actggtgatt tacaaccatt agaacaacct actagtgaag 
     2581 ctgttgaagc tccattggtt ggtacaccag tttgtattaa cgggcttatg ttgctcgaaa 
     2641 tcaaagacac agaaaagtac tgtgcccttg cacctaatat gatggtaaca aacaatacct 
     2701 tcacactcaa aggcggtgca ccaacaaagg ttacttttgg tgatgacact gtgatagaag 
     2761 tgcaaggtta caagagtgtg aatatcactt ttgaacttga tgaaaggatt gataaagtac 
     2821 ttaatgagaa gtgctctgcc tatacagttg aactcggtac agaagtaaat gagttcgcct 
     2881gtgttgtggc agatgctgtc ataaaaactt tgcaaccagt atctgaatta cttacaccac 
     2941 tgggcattga tttagatgag tggagtatgg ctacatacta cttatttgat gagtctggtg 
     3001 agtttaaatt ggcttcacat atgtattgtt ctttttaccc tccagatgag gatgaagaag 
     3061 aaggtgattg tgaagaagaa gagtttgagc catcaactca atatgagtat ggtactgaag 
     3121 atgattacca aggtaaacct ttggaatttg gtgccacttc tgctgctctt caacctgaag 
     3181 aagagcaaga agaagattgg ttagatgatg atagtcaaca aactgttggt caacaagacg 
     3241 gcagtgagga caatcagaca actactattc aaacaattgt tgaggttcaa cctcaattag 
     3301 agatggaact tacaccagtt gttcagacta ttgaagtgaa tagttttagt ggttatttaa 
     3361aacttactga caatgtatac attaaaaatg cagacattgt ggaagaagct aaaaaggtaa 
     3421 aaccaacagt ggttgttaat gcagccaatg tttaccttaa acatggagga ggtgttgcag 
     3481 gagccttaaa taaggctact aacaatgcca tgcaagttga atctgatgat tacatagcta 
     3541 ctaatggacc acttaaagtg ggtggtagtt gtgttttaag cggacacaat cttgctaaac 
     3601 actgtcttca tgttgtcggc ccaaatgtta acaaaggtga agacattcaa cttcttaaga 
     3661 gtgcttatga aaattttaat cagcacgaag ttctacttgc accattatta tcagctggta 
     3721 tttttggtgc tgaccctata cattctttaa gagtttgtgt agatactgtt cgcacaaatg 
     3781 tctacttagc tgtctttgat aaaaatctct atgacaaact tgtttcaagc tttttggaaa 
     3841tgaagagtga aaagcaagtt gaacaaaaga tcgctgagat tcctaaagag gaagttaagc 
     3901 catttataac tgaaagtaaa ccttcagttg aacagagaaa acaagatgat aagaaaatca 
     3961 aagcttgtgt tgaagaagtt acaacaactc tggaagaaac taagttcctc acagaaaact 
     4021 tgttacttta tattgacatt aatggcaatc ttcatccaga ttctgccact cttgttagtg 
     4081 acattgacat cactttctta aagaaagatg ctccatatat agtgggtgat gttgttcaag 
     4141 agggtgtttt aactgctgtg gttataccta ctaaaaaggc tggtggcact actgaaatgc 
     4201 tagcgaaagc tttgagaaaa gtgccaacag acaattatat aaccacttac ccgggtcagg 
     4261 gtttaaatgg ttacactgta gaggaggcaa agacagtgct taaaaagtgt aaaagtgcct 
     4321tttacattct accatctatt atctctaatg agaagcaaga aattcttgga actgtttctt 
     4381 ggaatttgcg agaaatgctt gcacatgcag aagaaacacg caaattaatg cctgtctgtg 
     4441 tggaaactaa agccatagtt tcaactatac agcgtaaata taagggtatt aaaatacaag 
     4501 agggtgtggt tgattatggt gctagatttt acttttacac cagtaaaaca actgtagcgt 
     4561 cacttatcaa cacacttaac gatctaaatg aaactcttgt tacaatgcca cttggctatg 
     4621 taacacatgg cttaaatttg gaagaagctg ctcggtatat gagatctctc aaagtgccag 
     4681 ctacagtttc tgtttcttca cctgatgctg ttacagcgta taatggttat cttacttctt 
     4741 cttctaaaac acctgaagaa cattttattg aaaccatctc acttgctggt tcctataaag 
     4801attggtccta ttctggacaa tctacacaac taggtataga atttcttaag agaggtgata 
     4861 aaagtgtata ttacactagt aatcctacca cattccacct agatggtgaa gttatcacct 
     4921 ttgacaatct taagacactt ctttctttga gagaagtgag gactattaag gtgtttacaa 
     4981 cagtagacaa cattaacctc cacacgcaag ttgtggacat gtcaatgaca tatggacaac 
     5041 agtttggtcc aacttatttg gatggagctg atgttactaa aataaaacct cataattcac 
     5101 atgaaggtaa aacattttat gttttaccta atgatgacac tctacgtgtt gaggcttttg 
     5161 agtactacca cacaactgat cctagttttc tgggtaggta catgtcagca ttaaatcaca 
     5221 ctaaaaagtg gaaataccca caagttaatg gtttaacttc tattaaatgg gcagataaca 
     5281actgttatct tgccacttca ttgttaacac tccaacaaat agagttgaag tttaatccac 
     5341 ctgctctaca agatgcttat tacagagcaa gggctggtga agctgctaac ttttgtgcac 
     5401 ttatcttagc ctactgtaat aagacagtag gtgagttagg tgatgttaga gaaacaatga 
     5461 gttacttgtt tcaacatgcc aatttagatt cttgcaaaag agtcttgaac gtggtgtgta 
     5521 aaacttgtgg acaacagcag acaaccctta agggtgtaga agctgttatg tacatgggta 
     5581 cactttctta tgaacaattt aagaaaggtg ttcagatacc ttgtacgtgt ggtaaacaag 
     5641 ctacaaaata tctagtacaa caggagtcac cttttgttat gatgtcagca ccacctgctc 
     5701 agtatgaact taagcatggt acatttactt gtgctagtga gtacactggt aattaccagt 
     5761gtggtcacta taaacatata acttctaaag aaactttgta ttgcatagac ggtgctttac 
     5821 ttacaaagtc ctcagaatac aaaggtccta ttacggatgt tttctacaaa gaaaacagtt 
     5881 acacaacaac cataaaacca gttacttata aattggatgg tgttgtttgt acagaaattg 
     5941 accctaagtt ggacaattat tataagaaag acaattctta tttcacagag caaccaattg 
     6001 atcttgtacc aaaccaacca tatccaaacg caagcttcga taattttaag tttgtatgtg 
     6061 ataatatcaa atttgctgat gatttaaacc agttaactgg ttataagaaa cctgcttcaa 
     6121 gagagcttaa agttacattt ttccctgact taaatggtga tgtggtggct attgattata 
     6181 aacactacac accctctttt aagaaaggag ctaaattgtt acataaacct attgtttggc 
     6241atgttaacaa tgcaactaat aaagccacgt ataaaccaaa tacctggtgt atacgttgtc 
     6301 tttggagcac aaaaccagtt gaaacatcaa attcgtttga tgtactgaag tcagaggacg 
     6361 cgcagggaat ggataatctt gcctgcgaag atctaaaacc agtctctgaa gaagtagtgg 
     6421 aaaatcctac catacagaaa gacgttcttg agtgtaatgt gaaaactacc gaagttgtag 
     6481 gagacattat acttaaacca gcaaataata gtttaaaaat tacagaagag gttggccaca 
     6541 cagatctaat ggctgcttat gtagacaatt ctagtcttac tattaagaaa cctaatgaat 
     6601 tatctagagt attaggtttg aaaacccttg ctactcatgg tttagctgct gttaatagtg 
     6661 tcccttggga tactatagct aattatgcta agccttttct taacaaagtt gttagtacaa 
     6721ctactaacat agttacacgg tgtttaaacc gtgtttgtac taattatatg ccttatttct 
     6781 ttactttatt gctacaattg tgtactttta ctagaagtac aaattctaga attaaagcat 
     6841 ctatgccgac tactatagca aagaatactg ttaagagtgt cggtaaattt tgtctagagg 
     6901 cttcatttaa ttatttgaag tcacctaatt tttctaaact gataaatatt ataatttggt 
     6961 ttttactatt aagtgtttgc ctaggttctt taatctactc aaccgctgct ttaggtgttt 
     7021 taatgtctaa tttaggcatg ccttcttact gtactggtta cagagaaggc tatttgaact 
     7081 ctactaatgt cactattgca acctactgta ctggttctat accttgtagt gtttgtctta 
     7141 gtggtttaga ttctttagac acctatcctt ctttagaaac tatacaaatt accatttcat 
     7201cttttaaatg ggatttaact gcttttggct tagttgcaga gtggtttttg gcatatattc 
     7261 ttttcactag gtttttctat gtacttggat tggctgcaat catgcaattg tttttcagct 
     7321 attttgcagt acattttatt agtaattctt ggcttatgtg gttaataatt aatcttgtac 
     7381 aaatggcccc gatttcagct atggttagaa tgtacatctt ctttgcatca ttttattatg 
     7441 tatggaaaag ttatgtgcat gttgtagacg gttgtaattc atcaacttgt atgatgtgtt 
     7501 acaaacgtaa tagagcaaca agagtcgaat gtacaactat tgttaatggt gttagaaggt 
     7561 ccttttatgt ctatgctaat ggaggtaaag gcttttgcaa actacacaat tggaattgtg 
     7621 ttaattgtga tacattctgt gctggtagta catttattag tgatgaagtt gcgagagact 
     7681tgtcactaca gtttaaaaga ccaataaatc ctactgacca gtcttcttac atcgttgata 
     7741 gtgttacagt gaagaatggt tccatccatc tttactttga taaagctggt caaaagactt 
     7801 atgaaagaca ttctctctct cattttgtta acttagacaa cctgagagct aataacacta 
     7861 aaggttcatt gcctattaat gttatagttt ttgatggtaa atcaaaatgt gaagaatcat 
     7921 ctgcaaaatc agcgtctgtt tactacagtc agcttatgtg tcaacctata ctgttactag 
     7981 atcaggcatt agtgtctgat gttggtgata gtgcggaagt tgcagttaaa atgtttgatg 
     8041 cttacgttaa tacgttttca tcaactttta acgtaccaat ggaaaaactc aaaacactag 
     8101 ttgcaactgc agaagctgaa cttgcaaaga atgtgtcctt agacaatgtc ttatctactt 
     8161ttatttcagc agctcggcaa gggtttgttg attcagatgt agaaactaaa gatgttgttg 
     8221 aatgtcttaa attgtcacat caatctgaca tagaagttac tggcgatagt tgtaataact 
     8281 atatgctcac ctataacaaa gttgaaaaca tgacaccccg tgaccttggt gcttgtattg 
     8341 actgtagtgc gcgtcatatt aatgcgcagg tagcaaaaag tcacaacatt gctttgatat 
     8401 ggaacgttaa agatttcatg tcattgtctg aacaactacg aaaacaaata cgtagtgctg 
     8461 ctaaaaagaa taacttacct tttaagttga catgtgcaac tactagacaa gttgttaatg 
     8521 ttgtaacaac aaagatagca cttaagggtg gtaaaattgt taataattgg ttgaagcagt 
     8581 taattaaagt tacacttgtg ttcctttttg ttgctgctat tttctattta ataacacctg 
     8641ttcatgtcat gtctaaacat actgactttt caagtgaaat cataggatac aaggctattg 
     8701 atggtggtgt cactcgtgac atagcatcta cagatacttg ttttgctaac aaacatgctg 
     8761 attttgacac atggtttagc cagcgtggtg gtagttatac taatgacaaa gcttgcccat 
     8821 tgattgctgc agtcataaca agagaagtgg gttttgtcgt gcctggtttg cctggcacga 
     8881 tattacgcac aactaatggt gactttttgc atttcttacc tagagttttt agtgcagttg 
     8941 gtaacatctg ttacacacca tcaaaactta tagagtacac tgactttgca acatcagctt 
     9001 gtgttttggc tgctgaatgt acaattttta aagatgcttc tggtaagcca gtaccatatt 
     9061 gttatgatac caatgtacta gaaggttctg ttgcttatga aagtttacgc cctgacacac 
     9121gttatgtgct catggatggc tctattattc aatttcctaa cacctacctt gaaggttctg 
     9181 ttagagtggt aacaactttt gattctgagt actgtaggca cggcacttgt gaaagatcag 
     9241 aagctggtgt ttgtgtatct actagtggta gatgggtact taacaatgat tattacagat 
     9301 ctttaccagg agttttctgt ggtgtagatg ctgtaaattt acttactaat atgtttacac 
     9361 cactaattca acctattggt gctttggaca tatcagcatc tatagtagct ggtggtattg 
     9421 tagctatcgt agtaacatgc cttgcctact attttatgag gtttagaaga gcttttggtg 
     9481 aatacagtca tgtagttgcc tttaatactt tactattcct tatgtcattc actgtactct 
     9541 gtttaacacc agtttactca ttcttacctg gtgtttattc tgttatttac ttgtacttga 
     9601cattttatct tactaatgat gtttcttttt tagcacatat tcagtggatg gttatgttca 
     9661 cacctttagt acctttctgg ataacaattg cttatatcat ttgtatttcc acaaagcatt 
     9721 tctattggtt ctttagtaat tacctagaga gacgtgtagt ctttaatggt gtttccttta 
     9781 gtacttttga agaagctgcg ctgtgcacct ttttgttaaa taaagaaatg tatctaaagt 
     9841 tgcgtagtga tgtgctatta cctcctacgc aatataatag atacttagtt ctttataata 
     9901 agtacaagta ttttagtgga gcaatggata caactagcta cagagaagct gcttgttgtc 
     9961 atctcgcaaa ggctctcaat gacttcagta actcaggttc tgatgttctt taccaaccac 
    10021 cacaaacctc tatcacctca gctgttttgc agagtggttt tagaaaaatg gcattcccat 
    10081ctggtaaagt tgagggttgt atggtacaag taacttgtgg tacaactaca cttaacggtc 
    10141 tttggcttga tgacgtagtt tactgtccaa gacatgtgat ctgcacctct gaagacatgc 
    10201 ttaaccctaa ttatgaagat ttactcattc gtaagtctaa tcataatttc ttggtacagg 
    10261 ctggtaatgt tcaactcagg gttattggac attctatgca aaattgtgta cttaagctta 
    10321 aggttgatac agccaatcct aagacaccta agtataagtt tgttcgcatt caaccaggac 
    10381 agactttttc agtgttagct tgttacaatg gttcaccatc tggtgtttac caatgtgcta 
    10441 tgaggcccaa tttcactatt aagggttcat tccttaatgg ttcatgtggt agtgttggtt 
    10501 ttaacataga ttatgactgt gtctcttttt gttacatgca ccatatggaa ttaccaactg 
    10561gagttcatgc tggcacagac ttagaaggta acttttatgg accttttgtt gacaggcaaa 
    10621 cagcacaagc agctggtacg gacacaacta ttacagttaa tgttttagct tggttgtacg 
    10681 ctgctgttat aaatggagac aggtggtttc tcaatcgatt taccacaact cttaatgact 
    10741 ttaaccttgt ggctatgaag tacaattatg aacctctaac acaagaccat gttgacatac 
    10801 taggacctct ttctgctcaa actggaattg ccgttttaga tatgtgtgct tcattaaaag 
    10861 aattactgca aaatggtatg aatggacgta ccatattggg tagtgcttta ttagaagatg 
    10921 aatttacacc ttttgatgtt gttagacaat gctcaggtgt tactttccaa agtgcagtga 
    10981 aaagaacaat caagggtaca caccactggt tgttactcac aattttgact tcacttttag 
    11041ttttagtcca gagtactcaa tggtctttgt tctttttttt gtatgaaaat gcctttttac 
    11101 cttttgctat gggtattatt gctatgtctg cttttgcaat gatgtttgtc aaacataagc 
    11161 atgcatttct ctgtttgttt ttgttacctt ctcttgccac tgtagcttat tttaatatgg 
    11221 tctatatgcc tgctagttgg gtgatgcgta ttatgacatg gttggatatg gttgatacta 
    11281 gtttgaagct aaaagactgt gttatgtatg catcagctgt agtgttacta atccttatga 
    11341 cagcaagaac tgtgtatgat gatggtgcta ggagagtgtg gacacttatg aatgtcttga 
    11401 cactcgttta taaagtttat tatggtaatg ctttagatca agccatttcc atgtgggctc 
    11461 ttataatctc tgttacttct aactactcag gtgtagttac aactgtcatg tttttggcca 
    11521gaggtattgt ttttatgtgt gttgagtatt gccctatttt cttcataact ggtaatacac 
    11581 ttcagtgtat aatgctagtt tattgtttct taggctattt ttgtacttgt tactttggcc 
    11641 tcttttgttt actcaaccgc tattttagac tgactcttgg tgtttatgat tacttagttt 
    11701 ctacacagga gtttagatat atgaattcac agggactact cccacccaag aatagcatag 
    11761 atgccttcaa actcaacatt aaattgttgg gtattggtgg caaaccttgt atcaaagtag 
    11821 ccactgtaca gtctaaaatg tcagatgtaa agtgcacatc agtagtctta ctctcagttt 
    11881 tgcaacaact cagagtagaa tcatcatcta aattgtgggc tcaatgtgtc cagttacaca 
    11941 atgacattct cttagctaaa gatactactg aagcctttga aaaaatggtt tcactacttt 
    12001ctgttttgct ttccatgcag ggtgctgtag acataaacaa gctttgtgaa gaaatgctgg 
    12061 acaacagggc aaccttacaa gctatagcct cagagtttag ttcccttcca tcatatgcag 
    12121 cttttgctac tgctcaagaa gcttatgagc aggctgttgc taatggtgat tctgaagttg 
    12181 ttcttaaaaa gttgaagaag tctttgaatg tggctaaatc tgaatttgac cgtgatgcag 
    12241 ccatgcaacg taagttggaa aagatggctg atcaagctat gacccaaatg tataaacagg 
    12301 ctagatctga ggacaagagg gcaaaagtta ctagtgctat gcagacaatg cttttcacta 
    12361 tgcttagaaa gttggataat gatgcactca acaacattat caacaatgca agagatggtt 
    12421 gtgttccctt gaacataata cctcttacaa cagcagccaa actaatggtt gtcataccag 
    12481actataacac atataaaaat acgtgtgatg gtacaacatt tacttatgca tcagcattgt 
    12541 gggaaatcca acaggttgta gatgcagata gtaaaattgt tcaacttagt gaaattagta 
    12601 tggacaattc acctaactta gcatggcctc ttattgtaac agctttaagg gccaattctg 
    12661 ctgtcaaatt acagaataat gagcttagtc ctgttgcact acgacagatg tcttgtgctg 
    12721 ccggtactac acaaactgct tgcactgatg acaatgcgtt agcttactac aacacaacaa 
    12781 agggaggtag gtttgtactt gcactgttat ccgatttaca ggatttgaaa tgggctagat 
    12841 tccctaagag tgatggaact ggtactatct atacagaact ggaaccacct tgtaggtttg 
    12901 ttacagacac acctaaaggt cctaaagtga agtatttata ctttattaaa ggattaaaca 
    12961acctaaatag aggtatggta cttggtagtt tagctgccac agtacgtcta caagctggta 
    13021 atgcaacaga agtgcctgcc aattcaactg tattatcttt ctgtgctttt gctgtagatg 
    13081 ctgctaaagc ttacaaagat tatctagcta gtgggggaca accaatcact aattgtgtta 
    13141 agatgttgtg tacacacact ggtactggtc aggcaataac agttacaccg gaagccaata 
    13201 tggatcaaga atcctttggt ggtgcatcgt gttgtctgta ctgccgttgc cacatagatc 
    13261 atccaaatcc taaaggattt tgtgacttaa aaggtaagta tgtacaaata cctacaactt 
    13321 gtgctaatga ccctgtgggt tttacactta aaaacacagt ctgtaccgtc tgcggtatgt 
    13381 ggaaaggtta tggctgtagt tgtgatcaac tccgcgaacc catgcttcag tcagctgatg 
    13441cacaatcgtt tttaaacggg tttgcggtgt aagtgcagcc cgtcttacac cgtgcggcac 
    13501 aggcactagt actgatgtcg tatacagggc ttttgacatc tacaatgata aagtagctgg 
    13561 ttttgctaaa ttcctaaaaa ctaattgttg tcgcttccaa gaaaaggacg aagatgacaa 
    13621 tttaattgat tcttactttg tagttaagag acacactttc tctaactacc aacatgaaga 
    13681 aacaatttat aatttactta aggattgtcc agctgttgct aaacatgact tctttaagtt 
    13741 tagaatagac ggtgacatgg taccacatat atcacgtcaa cgtcttacta aatacacaat 
    13801 ggcagacctc gtctatgctt taaggcattt tgatgaaggt aattgtgaca cattaaaaga 
    13861 aatacttgtc acatacaatt gttgtgatga tgattatttc aataaaaagg actggtatga 
    13921ttttgtagaa aacccagata tattacgcgt atacgccaac ttaggtgaac gtgtacgcca 
    13981 agctttgtta aaaacagtac aattctgtga tgccatgcga aatgctggta ttgttggtgt 
    14041 actgacatta gataatcaag atctcaatgg taactggtat gatttcggtg atttcataca 
    14101 aaccacgcca ggtagtggag ttcctgttgt agattcttat tattcattgt taatgcctat 
    14161 attaaccttg accagggctt taactgcaga gtcacatgtt gacactgact taacaaagcc 
    14221 ttacattaag tgggatttgt taaaatatga cttcacggaa gagaggttaa aactctttga 
    14281 ccgttatttt aaatattggg atcagacata ccacccaaat tgtgttaact gtttggatga 
    14341 cagatgcatt ctgcattgtg caaactttaa tgttttattc tctacagtgt tcccacttac 
    14401aagttttgga ccactagtga gaaaaatatt tgttgatggt gttccatttg tagtttcaac 
    14461 tggataccac ttcagagagc taggtgttgt acataatcag gatgtaaact tacatagctc 
    14521 tagacttagt tttaaggaat tacttgtgta tgctgctgac cctgctatgc acgctgcttc 
    14581 tggtaatcta ttactagata aacgcactac gtgcttttca gtagctgcac ttactaacaa 
    14641 tgttgctttt caaactgtca aacccggtaa ttttaacaaa gacttctatg actttgctgt 
    14701 gtctaagggt ttctttaagg aaggaagttc tgttgaatta aaacacttct tctttgctca 
    14761 ggatggtaat gctgctatca gcgattatga ctactatcgt tataatctac caacaatgtg 
    14821 tgatatcaga caactactat ttgtagttga agttgttgat aagtactttg attgttacga 
    14881tggtggctgt attaatgcta accaagtcat cgtcaacaac ctagacaaat cagctggttt 
    14941 tccatttaat aaatggggta aggctagact ttattatgat tcaatgagtt atgaggatca 
    15001 agatgcactt ttcgcatata caaaacgtaa tgtcatccct actataactc aaatgaatct 
    15061 taagtatgcc attagtgcaa agaatagagc tcgcaccgta gctggtgtct ctatctgtag 
    15121 tactatgacc aatagacagt ttcatcaaa"

x2 = "taaaggttta taccttccca ggtaacaaac caaccaactt tcgatctctt gtagatctgt 
       61 tctctaaacg aactttaaaa tctgtgtggc tgtcactcgg ctgcatgctt agtgcactca 
      121 cgcagtataa ttaataacta attactgtcg ttgacaggac acgagtaact cgtctatctt 
      181 ctgcaggctg cttacggttt cgtccgtgtt gcagccgatc atcagcacat ctaggttttg 
      241 tccgggtgtg accgaaaggt aagatggaga gccttgtccc tggtttcaac gagaaaacac 
      301 acgtccaact cagtttgcct gttttacagg ttcgcgacgt gctcgtacgt ggctttggag 
      361 actccgtgga ggaggtctta tcagaggcac gtcaacatct taaagatggc acttgtggct 
      421 tagtagaagt tgaaaaaggc gttttgcctc aacttgaaca gccctatgtg ttcatcaaac 
      481gttcggatgc tcgaactgca cctcatggtc atgttatggt tgagctggta gcagaactcg 
      541 aaggcattca gtacggtcgt agtggtgaga cacttggtgt ccttgtccct catgtgggcg 
      601 aaataccagt ggcttaccgc aaggttcttc ttcgtaagaa cggtaataaa ggagctggtg 
      661 gccatagtta cggcgccgat ctaaagtcat ttgacttagg cgacgagctt ggcactgatc 
      721 cttatgaaga ttttcaagaa aactggaaca ctaaacatag cagtggtgtt acccgtgaac 
      781 tcatgcgtga gcttaacgga ggggcataca ctcgctatgt cgataacaac ttctgtggcc 
      841 ctgatggcta ccctcttgag tgcattaaag accttctagc acgtgctggt aaagcttcat 
      901 gcactttgtc cgaacaactg gactttattg acactaagag gggtgtatac tgctgccgtg 
      961aacatgagca tgaaattgct tggtacacgg aacgttctga aaagagctat gaattgcaga 
     1021 caccttttga aattaaattg gcaaagaaat ttgacatctt caatggggaa tgtccaaatt 
     1081 ttgtatttcc cttaaattcc ataatcaaga ctattcaacc aagggttgaa aagaaaaagc 
     1141 ttgatggctt tatgggtaga attcgatctg tctatccagt tgcgtcacca aatgaatgca 
     1201 accaaatgtg cctttcaact ctcatgaagt gtgatcattg tggtgaaact tcatggcaga 
     1261 cgggcgattt tgttaaagcc acttgcgaat tttgtggcac tgagaatttg actaaagaag 
     1321 gtgccactac ttgtggttac ttaccccaaa atgctgttgt taaaatttat tgtccagcat 
     1381 gtcacaattc agaagtagga cctgagcata gtcttgccga ataccataat gaatctggct 
     1441tgaaaaccat tcttcgtaag ggtggtcgca ctattgcctt tggaggctgt gtgttctctt 
     1501 atgttggttg ccataacaag tgtgcctatt gggttccacg tgctagcgct aacataggtt 
     1561 gtaaccatac aggtgttgtt ggagaaggtt ccgaaggtct taatgacaac cttcttgaaa 
     1621 tactccaaaa agagaaagtc aacatcaata ttgttggtga ctttaaactt aatgaagaga 
     1681 tcgccattat tttggcatct ttttctgctt ccacaagtgc ttttgtggaa actgtgaaag 
     1741 gtttggatta taaagcattc aaacaaattg ttgaatcctg tggtaatttt aaagttacaa 
     1801 aaggaaaagc taaaaaaggt gcctggaata ttggtgaaca gaaatcaata ctgagtcctc 
     1861 tttatgcatt tgcatcagag gctgctcgtg ttgtacgatc aattttctcc cgcactcttg 
     1921aaactgctca aaattctgtg cgtgttttac agaaggccgc tataacaata ctagatggaa 
     1981 tttcacagta ttcactgaga ctcattgatg ctatgatgtt cacatctgat ttggctacta 
     2041 acaatctagt tgtaatggcc tacattacag gtggtgttgt tcagttgact tcgcagtggc 
     2101 taactaacat ctttggcact gtttatgaaa aactcaaacc cgtccttgat tggcttgaag 
     2161 agaagtttaa ggaaggtgta gagtttctta gagacggttg ggaaattgtt aaatttatct 
     2221 caacctgtgc ttgtgaaatt gtcggtggac aaattgtcac ctgtgcaaag gaaattaagg 
     2281 agagtgttca gacattcttt aagcttgtaa ataaattttt ggctttgtgt gctgactcta 
     2341 tcattattgg tggagctaaa cttaaagcct tgaatttagg tgaaacattt gtcacgcact 
     2401caaagggatt gtacagaaag tgtgttaaat ccagagaaga aactggccta ctcatgcctc 
     2461 taaaagcccc aaaagaaatt atcttcttag agggagaaac acttcccaca gaagtgttaa 
     2521 cagaggaagt tgtcttgaaa actggtgatt tacaaccatt agaacaacct actagtgaag 
     2581 ctgttgaagc tccattggtt ggtacaccag tttgtattaa cgggcttatg ttgctcgaaa 
     2641 tcaaagacac agaaaagtac tgtgcccttg cacctaatat gatggtaaca aacaatacct 
     2701 tcacactcaa aggcggtgca ccaacaaagg ttacttttgg tgatgacact gtgatagaag 
     2761 tgcaaggtta caagagtgtg aatatcactt ttgaacttga tgaaaggatt gataaagtac 
     2821 ttaatgagaa gtgctctgcc tatacagttg aactcggtac agaagtaaat gagttcgcct 
     2881gtgttgtggc agatgctgtc ataaaaactt tgcaaccagt atctgaatta cttacaccac 
     2941 tgggcattga tttagatgag tggagtatgg ctacatacta cttatttgat gagtctggtg 
     3001 agtttaaatt ggcttcacat atgtattgtt ctttttaccc tccagatgag gatgaagaag 
     3061 aaggtgattg tgaagaagaa gagtttgagc catcaactca atatgagtat ggtactgaag 
     3121 atgattacca aggtaaacct ttggaatttg gtgccacttc tgctgctctt caacctgaag 
     3181 aagagcaaga agaagattgg ttagatgatg atagtcaaca aactgttggt caacaagacg 
     3241 gcagtgagga caatcagaca actactattc aaacaattgt tgaggttcaa cctcaattag 
     3301 agatggaact tacaccagtt gttcagacta ttgaagtgaa tagttttagt ggttatttaa 
     3361aacttactga caatgtatac attaaaaatg cagacattgt ggaagaagct aaaaaggtaa 
     3421 aaccaacagt ggttgttaat gcagccaatg tttaccttaa acatggagga ggtgttgcag 
     3481 gagccttaaa taaggctact aacaatgcca tgcaagttga atctgatgat tacatagcta 
     3541 ctaatggacc acttaaagtg ggtggtagtt gtgttttaag cggacacaat cttgctaaac 
     3601 actgtcttca tgttgtcggc ccaaatgtta acaaaggtga agacattcaa cttcttaaga 
     3661 gtgcttatga aaattttaat cagcacgaag ttctacttgc accattatta tcagctggta 
     3721 tttttggtgc tgaccctata cattctttaa gagtttgtgt agatactgtt cgcacaaatg 
     3781 tctacttagc tgtctttgat aaaaatctct atgacaaact tgtttcaagc tttttggaaa 
     3841tgaagagtga aaagcaagtt gaacaaaaga tcgctgagat tcctaaagag gaagttaagc 
     3901 catttataac tgaaagtaaa ccttcagttg aacagagaaa acaagatgat aagaaaatca 
     3961 aagcttgtgt tgaagaagtt acaacaactc tggaagaaac taagttcctc acagaaaact 
     4021 tgttacttta tattgacatt aatggcaatc ttcatccaga ttctgccact cttgttagtg 
     4081 acattgacat cactttctta aagaaagatg ctccatatat agtgggtgat gttgttcaag 
     4141 agggtgtttt aactgctgtg gttataccta ctaaaaaggc tggtggcact actgaaatgc 
     4201 tagcgaaagc tttgagaaaa gtgccaacag acaattatat aaccacttac ccgggtcagg 
     4261 gtttaaatgg ttacactgta gaggaggcaa agacagtgct taaaaagtgt aaaagtgcct 
     4321tttacattct accatctatt atctctaatg agaagcaaga aattcttgga actgtttctt 
     4381 ggaatttgcg agaaatgctt gcacatgcag aagaaacacg caaattaatg cctgtctgtg 
     4441 tggaaactaa agccatagtt tcaactatac agcgtaaata taagggtatt aaaatacaag 
     4501 agggtgtggt tgattatggt gctagatttt acttttacac cagtaaaaca actgtagcgt 
     4561 cacttatcaa cacacttaac gatctaaatg aaactcttgt tacaatgcca cttggctatg 
     4621 taacacatgg cttaaatttg gaagaagctg ctcggtatat gagatctctc aaagtgccag 
     4681 ctacagtttc tgtttcttca cctgatgctg ttacagcgta taatggttat cttacttctt 
     4741 cttctaaaac acctgaagaa cattttattg aaaccatctc acttgctggt tcctataaag 
     4801attggtccta ttctggacaa tctacacaac taggtataga atttcttaag agaggtgata 
     4861 aaagtgtata ttacactagt aatcctacca cattccacct agatggtgaa gttatcacct 
     4921 ttgacaatct taagacactt ctttctttga gagaagtgag gactattaag gtgtttacaa 
     4981 cagtagacaa cattaacctc cacacgcaag ttgtggacat gtcaatgaca tatggacaac 
     5041 agtttggtcc aacttatttg gatggagctg atgttactaa aataaaacct cataattcac 
     5101 atgaaggtaa aacattttat gttttaccta atgatgacac tctacgtgtt gaggcttttg 
     5161 agtactacca cacaactgat cctagttttc tgggtaggta catgtcagca ttaaatcaca 
     5221 ctaaaaagtg gaaataccca caagttaatg gtttaacttc tattaaatgg gcagataaca 
     5281actgttatct tgccacttca ttgttaacac tccaacaaat agagttgaag tttaatccac 
     5341 ctgctctaca agatgcttat tacagagcaa gggctggtga agctgctaac ttttgtgcac 
     5401 ttatcttagc ctactgtaat aagacagtag gtgagttagg tgatgttaga gaaacaatga 
     5461 gttacttgtt tcaacatgcc aatttagatt cttgcaaaag agtcttgaac gtggtgtgta 
     5521 aaacttgtgg acaacagcag acaaccctta agggtgtaga agctgttatg tacatgggta 
     5581 cactttctta tgaacaattt aagaaaggtg ttcagatacc ttgtacgtgt ggtaaacaag 
     5641 ctacaaaata tctagtacaa caggagtcac cttttgttat gatgtcagca ccacctgctc 
     5701 agtatgaact taagcatggt acatttactt gtgctagtga gtacactggt aattaccagt 
     5761gtggtcacta taaacatata acttctaaag aaactttgta ttgcatagac ggtgctttac 
     5821 ttacaaagtc ctcagaatac aaaggtccta ttacggatgt tttctacaaa gaaaacagtt 
     5881 acacaacaac cataaaacca gttacttata aattggatgg tgttgtttgt acagaaattg 
     5941 accctaagtt ggacaattat tataagaaag acaattctta tttcacagag caaccaattg 
     6001 atcttgtacc aaaccaacca tatccaaacg caagcttcga taattttaag tttgtatgtg 
     6061 ataatatcaa atttgctgat gatttaaacc agttaactgg ttataagaaa cctgcttcaa 
     6121 gagagcttaa agttacattt ttccctgact taaatggtga tgtggtggct attgattata 
     6181 aacactacac accctctttt aagaaaggag ctaaattgtt acataaacct attgtttggc 
     6241atgttaacaa tgcaactaat aaagccacgt ataaaccaaa tacctggtgt atacgttgtc 
     6301 tttggagcac aaaaccagtt gaaacatcaa attcgtttga tgtactgaag tcagaggacg 
     6361 cgcagggaat ggataatctt gcctgcgaag atctaaaacc agtctctgaa gaagtagtgg 
     6421 aaaatcctac catacagaaa gacgttcttg agtgtaatgt gaaaactacc gaagttgtag 
     6481 gagacattat acttaaacca gcaaataata gtttaaaaat tacagaagag gttggccaca 
     6541 cagatctaat ggctgcttat gtagacaatt ctagtcttac tattaagaaa cctaatgaat 
     6601 tatctagagt attaggtttg aaaacccttg ctactcatgg tttagctgct gttaatagtg 
     6661 tcccttggga tactatagct aattatgcta agccttttct taacaaagtt gttagtacaa 
     6721ctactaacat agttacacgg tgtttaaacc gtgtttgtac taattatatg ccttatttct 
     6781 ttactttatt gctacaattg tgtactttta ctagaagtac aaattctaga attaaagcat 
     6841 ctatgccgac tactatagca aagaatactg ttaagagtgt cggtaaattt tgtctagagg 
     6901 cttcatttaa ttatttgaag tcacctaatt tttctaaact gataaatatt ataatttggt 
     6961 ttttactatt aagtgtttgc ctaggttctt taatctactc aaccgctgct ttaggtgttt 
     7021 taatgtctaa tttaggcatg ccttcttact gtactggtta cagagaaggc tatttgaact 
     7081 ctactaatgt cactattgca acctactgta ctggttctat accttgtagt gtttgtctta 
     7141 gtggtttaga ttctttagac acctatcctt ctttagaaac tatacaaatt accatttcat 
     7201cttttaaatg ggatttaact gcttttggct tagttgcaga gtggtttttg gcatatattc 
     7261 ttttcactag gtttttctat gtacttggat tggctgcaat catgcaattg tttttcagct 
     7321 attttgcagt acattttatt agtaattctt ggcttatgtg gttaataatt aatcttgtac 
     7381 aaatggcccc gatttcagct atggttagaa tgtacatctt ctttgcatca ttttattatg 
     7441 tatggaaaag ttatgtgcat gttgtagacg gttgtaattc atcaacttgt atgatgtgtt 
     7501 acaaacgtaa tagagcaaca agagtcgaat gtacaactat tgttaatggt gttagaaggt 
     7561 ccttttatgt ctatgctaat ggaggtaaag gcttttgcaa actacacaat tggaattgtg 
     7621 ttaattgtga tacattctgt gctggtagta catttattag tgatgaagtt gcgagagact 
     7681tgtcactaca gtttaaaaga ccaataaatc ctactgacca gtcttcttac atcgttgata 
     7741 gtgttacagt gaagaatggt tccatccatc tttactttga taaagctggt caaaagactt 
     7801 atgaaagaca ttctctctct cattttgtta acttagacaa cctgagagct aataacacta 
     7861 aaggttcatt gcctattaat gttatagttt ttgatggtaa atcaaaatgt gaagaatcat 
     7921 ctgcaaaatc agcgtctgtt tactacagtc agcttatgtg tcaacctata ctgttactag 
     7981 atcaggcatt agtgtctgat gttggtgata gtgcggaagt tgcagttaaa atgtttgatg 
     8041 cttacgttaa tacgttttca tcaactttta acgtaccaat ggaaaaactc aaaacactag 
     8101 ttgcaactgc agaagctgaa cttgcaaaga atgtgtcctt agacaatgtc ttatctactt 
     8161ttatttcagc agctcggcaa gggtttgttg attcagatgt agaaactaaa gatgttgttg 
     8221 aatgtcttaa attgtcacat caatctgaca tagaagttac tggcgatagt tgtaataact 
     8281 atatgctcac ctataacaaa gttgaaaaca tgacaccccg tgaccttggt gcttgtattg 
     8341 actgtagtgc gcgtcatatt aatgcgcagg tagcaaaaag tcacaacatt gctttgatat 
     8401 ggaacgttaa agatttcatg tcattgtctg aacaactacg aaaacaaata cgtagtgctg 
     8461 ctaaaaagaa taacttacct tttaagttga catgtgcaac tactagacaa gttgttaatg 
     8521 ttgtaacaac aaagatagca cttaagggtg gtaaaattgt taataattgg ttgaagcagt 
     8581 taattaaagt tacacttgtg ttcctttttg ttgctgctat tttctattta ataacacctg 
     8641ttcatgtcat gtctaaacat actgactttt caagtgaaat cataggatac aaggctattg 
     8701 atggtggtgt cactcgtgac atagcatcta cagatacttg ttttgctaac aaacatgctg 
     8761 attttgacac atggtttagc cagcgtggtg gtagttatac taatgacaaa gcttgcccat 
     8821 tgattgctgc agtcataaca agagaagtgg gttttgtcgt gcctggtttg cctggcacga 
     8881 tattacgcac aactaatggt gactttttgc atttcttacc tagagttttt agtgcagttg 
     8941 gtaacatctg ttacacacca tcaaaactta tagagtacac tgactttgca acatcagctt 
     9001 gtgttttggc tgctgaatgt acaattttta aagatgcttc tggtaagcca gtaccatatt 
     9061 gttatgatac caatgtacta gaaggttctg ttgcttatga aagtttacgc cctgacacac 
     9121gttatgtgct catggatggc tctattattc aatttcctaa cacctacctt gaaggttctg 
     9181 ttagagtggt aacaactttt gattctgagt actgtaggca cggcacttgt gaaagatcag 
     9241 aagctggtgt ttgtgtatct actagtggta gatgggtact taacaatgat tattacagat 
     9301 ctttaccagg agttttctgt ggtgtagatg ctgtaaattt acttactaat atgtttacac 
     9361 cactaattca acctattggt gctttggaca tatcagcatc tatagtagct ggtggtattg 
     9421 tagctatcgt agtaacatgc cttgcctact attttatgag gtttagaaga gcttttggtg 
     9481 aatacagtca tgtagttgcc tttaatactt tactattcct tatgtcattc actgtactct 
     9541 gtttaacacc agtttactca ttcttacctg gtgtttattc tgttatttac ttgtacttga 
     9601cattttatct tactaatgat gtttcttttt tagcacatat tcagtggatg gttatgttca 
     9661 cacctttagt acctttctgg ataacaattg cttatatcat ttgtatttcc acaaagcatt 
     9721 tctattggtt ctttagtaat tacctagaga gacgtgtagt ctttaatggt gtttccttta 
     9781 gtacttttga agaagctgcg ctgtgcacct ttttgttaaa taaagaaatg tatctaaagt 
     9841 tgcgtagtga tgtgctatta cctcctacgc aatataatag atacttagtt ctttataata 
     9901 agtacaagta ttttagtgga gcaatggata caactagcta cagagaagct gcttgttgtc 
     9961 atctcgcaaa ggctctcaat gacttcagta actcaggttc tgatgttctt taccaaccac 
    10021 cacaaacctc tatcacctca gctgttttgc agagtggttt tagaaaaatg gcattcccat 
    10081ctggtaaagt tgagggttgt atggtacaag taacttgtgg tacaactaca cttaacggtc 
    10141 tttggcttga tgacgtagtt tactgtccaa gacatgtgat ctgcacctct gaagacatgc 
    10201 ttaaccctaa ttatgaagat ttactcattc gtaagtctaa tcataatttc ttggtacagg 
    10261 ctggtaatgt tcaactcagg gttattggac attctatgca aaattgtgta cttaagctta 
    10321 aggttgatac agccaatcct aagacaccta agtataagtt tgttcgcatt caaccaggac 
    10381 agactttttc agtgttagct tgttacaatg gttcaccatc tggtgtttac caatgtgcta 
    10441 tgaggcccaa tttcactatt aagggttcat tccttaatgg ttcatgtggt agtgttggtt 
    10501 ttaacataga ttatgactgt gtctcttttt gttacatgca ccatatggaa ttaccaactg 
    10561gagttcatgc tggcacagac ttagaaggta acttttatgg accttttgtt gacaggcaaa 
    10621 cagcacaagc agctggtacg gacacaacta ttacagttaa tgttttagct tggttgtacg 
    10681 ctgctgttat aaatggagac aggtggtttc tcaatcgatt taccacaact cttaatgact 
    10741 ttaaccttgt ggctatgaag tacaattatg aacctctaac acaagaccat gttgacatac 
    10801 taggacctct ttctgctcaa actggaattg ccgttttaga tatgtgtgct tcattaaaag 
    10861 aattactgca aaatggtatg aatggacgta ccatattggg tagtgcttta ttagaagatg 
    10921 aatttacacc ttttgatgtt gttagacaat gctcaggtgt tactttccaa agtgcagtga 
    10981 aaagaacaat caagggtaca caccactggt tgttactcac aattttgact tcacttttag 
    11041ttttagtcca gagtactcaa tggtctttgt tctttttttt gtatgaaaat gcctttttac 
    11101 cttttgctat gggtattatt gctatgtctg cttttgcaat gatgtttgtc aaacataagc 
    11161 atgcatttct ctgtttgttt ttgttacctt ctcttgccac tgtagcttat tttaatatgg 
    11221 tctatatgcc tgctagttgg gtgatgcgta ttatgacatg gttggatatg gttgatacta 
    11281 gtttgaagct aaaagactgt gttatgtatg catcagctgt agtgttacta atccttatga 
    11341 cagcaagaac tgtgtatgat gatggtgcta ggagagtgtg gacacttatg aatgtcttga 
    11401 cactcgttta taaagtttat tatggtaatg ctttagatca agccatttcc atgtgggctc 
    11461 ttataatctc tgttacttct aactactcag gtgtagttac aactgtcatg tttttggcca 
    11521gaggtattgt ttttatgtgt gttgagtatt gccctatttt cttcataact ggtaatacac 
    11581 ttcagtgtat aatgctagtt tattgtttct taggctattt ttgtacttgt tactttggcc 
    11641 tcttttgttt actcaaccgc tattttagac tgactcttgg tgtttatgat tacttagttt 
    11701 ctacacagga gtttagatat atgaattcac agggactact cccacccaag aatagcatag 
    11761 atgccttcaa actcaacatt aaattgttgg gtattggtgg caaaccttgt atcaaagtag 
    11821 ccactgtaca gtctaaaatg tcagatgtaa agtgcacatc agtagtctta ctctcagttt 
    11881 tgcaacaact cagagtagaa tcatcatcta aattgtgggc tcaatgtgtc cagttacaca 
    11941 atgacattct cttagctaaa gatactactg aagcctttga aaaaatggtt tcactacttt 
    12001ctgttttgct ttccatgcag ggtgctgtag acataaacaa gctttgtgaa gaaatgctgg 
    12061 acaacagggc aaccttacaa gctatagcct cagagtttag ttcccttcca tcatatgcag 
    12121 cttttgctac tgctcaagaa gcttatgagc aggctgttgc taatggtgat tctgaagttg 
    12181 ttcttaaaaa gttgaagaag tctttgaatg tggctaaatc tgaatttgac cgtgatgcag 
    12241 ccatgcaacg taagttggaa aagatggctg atcaagctat gacccaaatg tataaacagg 
    12301 ctagatctga ggacaagagg gcaaaagtta ctagtgctat gcagacaatg cttttcacta 
    12361 tgcttagaaa gttggataat gatgcactca acaacattat caacaatgca agagatggtt 
    12421 gtgttccctt gaacataata cctcttacaa cagcagccaa actaatggtt gtcataccag 
    12481actataacac atataaaaat acgtgtgatg gtacaacatt tacttatgca tcagcattgt 
    12541 gggaaatcca acaggttgta gatgcagata gtaaaattgt tcaacttagt gaaattagta 
    12601 tggacaattc acctaactta gcatggcctc ttattgtaac agctttaagg gccaattctg 
    12661 ctgtcaaatt acagaataat gagcttagtc ctgttgcact acgacagatg tcttgtgctg 
    12721 ccggtactac acaaactgct tgcactgatg acaatgcgtt agcttactac aacacaacaa 
    12781 agggaggtag gtttgtactt gcactgttat ccgatttaca ggatttgaaa tgggctagat 
    12841 tccctaagag tgatggaact ggtactatct atacagaact ggaaccacct tgtaggtttg 
    12901 ttacagacac acctaaaggt cctaaagtga agtatttata ctttattaaa ggattaaaca 
    12961acctaaatag aggtatggta cttggtagtt tagctgccac agtacgtcta caagctggta 
    13021 atgcaacaga agtgcctgcc aattcaactg tattatcttt ctgtgctttt gctgtagatg 
    13081 ctgctaaagc ttacaaagat tatctagcta gtgggggaca accaatcact aattgtgtta 
    13141 agatgttgtg tacacacact ggtactggtc aggcaataac agttacaccg gaagccaata 
    13201 tggatcaaga atcctttggt ggtgcatcgt gttgtctgta ctgccgttgc cacatagatc 
    13261 atccaaatcc taaaggattt tgtgacttaa aaggtaagta tgtacaaata cctacaactt 
    13321 gtgctaatga ccctgtgggt tttacactta aaaacacagt ctgtaccgtc tgcggtatgt 
    13381 ggaaaggtta tggctgtagt tgtgatcaac tccgcgaacc catgcttcag tcagctgatg 
    13441cacaatcgtt tttaaacggg tttgcggtgt aagtgcagcc cgtcttacac cgtgcggcac 
    13501 aggcactagt actgatgtcg tatacagggc ttttgacatc tacaatgata aagtagctgg 
    13561 ttttgctaaa ttcctaaaaa ctaattgttg tcgcttccaa gaaaaggacg aagatgacaa 
    13621 tttaattgat tcttactttg tagttaagag acacactttc tctaactacc aacatgaaga 
    13681 aacaatttat aatttactta aggattgtcc agctgttgct aaacatgact tctttaagtt 
    13741 tagaatagac ggtgacatgg taccacatat atcacgtcaa cgtcttacta aatacacaat 
    13801 ggcagacctc gtctatgctt taaggcattt tgatgaaggt aattgtgaca cattaaaaga 
    13861 aatacttgtc acatacaatt gttgtgatga tgattatttc aataaaaagg actggtatga 
    13921ttttgtagaa aacccagata tattacgcgt atacgccaac ttaggtgaac gtgtacgcca 
    13981 agctttgtta aaaacagtac aattctgtga tgccatgcga aatgctggta ttgttggtgt 
    14041 actgacatta gataatcaag atctcaatgg taactggtat gatttcggtg atttcataca 
    14101 aaccacgcca ggtagtggag ttcctgttgt agattcttat tattcattgt taatgcctat 
    14161 attaaccttg accagggctt taactgcaga gtcacatgtt gacactgact taacaaagcc 
    14221 ttacattaag tgggatttgt taaaatatga cttcacggaa gagaggttaa aactctttga 
    14281 ccgttatttt aaatattggg atcagacata ccacccaaat tgtgttaact gtttggatga 
    14341 cagatgcatt ctgcattgtg caaactttaa tgttttattc tctacagtgt tcccacttac 
    14401aagttttgga ccactagtga gaaaaatatt tgttgatggt gttccatttg tagtttcaac 
    14461 tggataccac ttcagagagc taggtgttgt acataatcag gatgtaaact tacatagctc 
    14521 tagacttagt tttaaggaat tacttgtgta tgctgctgac cctgctatgc acgctgcttc 
    14581 tggtaatcta ttactagata aacgcactac gtgcttttca gtagctgcac ttactaacaa 
    14641 tgttgctttt caaactgtca aacccggtaa ttttaacaaa gacttctatg actttgctgt 
    14701 gtctaagggt ttctttaagg aaggaagttc tgttgaatta aaacacttct tctttgctca 
    14761 ggatggtaat gctgctatca gcgattatga ctactatcgt tataatctac caacaatgtg 
    14821 tgatatcaga caactactat ttgtagttga agttgttgat aagtactttg attgttacga 
    14881tggtggctgt attaatgcta accaagtcat cgtcaacaac ctagacaaat cagctggttt 
    14941 tccatttaat aaatggggta aggctagact ttattatgat tcaatgagtt atgaggatca 
    15001 agatgcactt ttcgcatata caaaacgtaa tgtcatccct actataactc aaatgaatct 
    15061 taagtatgcc attagtgcaa agaatagagc tcgcaccgta gctggtgtct ctatctgtag 
    15121 tactatgacc aatagacagt ttcatcaaa"


estimar.mv.com.ac <- function(x,x2,k){
  texto = x
  texto2 = x2
  alfabeto01 = s2c("acgt")
  contagem = list()
  contagem.comp = list()
  for (i in 1:k) {
    contagem[[i]] = count(s2c(texto), word = i,start = 0, by = 1, alphabet = alfabeto01 )
    contagem.comp[[i]] = count(s2c(texto2), word = i,start = 0, by = 1, alphabet = alfabeto01 )
  }
  matrizes.estimadas = list()
  matriz.mv = matrix()
  for (j in 1:(k-1)) {
    selecao = contagem[[j+1]]
    selecao.comp = contagem.comp[[j]]
    matriz.mv = matrix(0,(4^j),4)
    for (z in 1:length(selecao.comp)) {
      matriz.mv[z,1] = selecao[[(4*z - 3)]]/selecao.comp[[z]]
      matriz.mv[z,2] = selecao[[(4*z - 2)]]/selecao.comp[[z]]
      matriz.mv[z,3] = selecao[[(4*z - 1)]]/selecao.comp[[z]]
      matriz.mv[z,4] = selecao[[(4*z)]]/selecao.comp[[z]]
    }
    matrizes.estimadas[[j]] = matriz.mv
  }
  return(matrizes.estimadas)
}

estimar.mv.com.ac(x1,x2,4)


# segundo banco
# Síndrome respiratória aguda grave coronavírus 2 isolado SARS-CoV-2 / humano / USA / VA-DCLS-5379/2021, genoma completo


x12= "ctcttgtaga tctgttctct aaacgaactt taaaatctgt gtggctgtca ctcggctgca 
       61 tgcttagtgc actcacgcag tataattaat aactaattac tgtcgttgac aggacacgag 
      121 taactcgtct atcttctgca ggctgcttac ggtttcgtcc gtgttgcagc cgatcatcag 
      181 cacatctagg ttttgtccgg gtgtgaccga aaggtaagat ggagagcctt gtccctggtt 
      241 tcaacgagaa aacacacgtc caactcagtt tgcctgtttt acaggttcgc gacgtgctcg 
      301 tacgtggctt tggagactcc gtggaggagg tcttatcaga ggcacgtcaa catcttaaag 
      361 atggcacttg tggcttagta gaagttgaaa aaggcgtttt gcctcaactt gaacagccct 
      421 atgtgttcat caaacgttcg gatgctcgaa ctgcacctca tggtcatgtt atggttgagc 
      481tggtagcaga actcgaaggc attcagtacg gtcgtagtgg tgagacactt ggtgtccttg 
      541 tccctcatgt gggcgaaata ccagtggctt accgcaaggt tcttcttcgt aagaacggta 
      601 ataaaggagc tggtggccat agttacggcg ccgatctaaa gtcatttggc ttaggcgacg 
      661 agcttggcac tgatccttat gaagattttc aagaaaactg gaacactaaa catagcagtg 
      721 gtgttacccg tgaactcatg cgtgagctta acggaggggc atacactcgc tatgtcgata 
      781 acaacttctg tggccctgat ggctaccctc ttgagtgcat taaagacctt ctagcacgtg 
      841 ctggtaaagc ttcatgcact ttgtctgaac aactggactt tattgacact aagaggggtg 
      901 tatactgctg ccgtgaacat gagcatgaaa ttgcttggta cacggaacgt tctgaaaaga 
      961gctatgaatt gcagacacct tttgaaatta aattggcaaa gaaatttgac accttcaatg 
     1021 gggaatgtcc aaattttgta tttcccttaa attccataat caagactatt caaccaaggg 
     1081 ttgaaaagaa aaagcttgat ggctttatgg gtagaattcg atctgtctat ccagttgcgt 
     1141 caccaaatga atgcaaccaa atgtgccttt caactctcat gaagtgtgat cattgtggtg 
     1201 aaacttcatg gcagacgggc gattttgtta aagccacttg cgaattttgt ggcactgaga 
     1261 atttgactaa agaaggtgcc actacttgtg gttacttacc ccaaaatgct gttgttaaaa 
     1321 tttattgtcc agcatgtcac aattcagaag taggacctga gcatagtctt gccgaatacc 
     1381 atannnaatc tggcttgaaa accattcttc gtaagggtgg tcgcactatt gcctttggag 
     1441gctgtgtgtt ctcttatgtt ggttgccata acaagtgtgc ctattgggtt ccacgtgcta 
     1501 gcgctaacat aggttgtaac catacaggtg ttgttggaga aggttccgaa ggtcttaatg 
     1561 acaaccttct tgaaataatc caaaaagaga aagtcaacat caatattgtt ggtgacttta 
     1621 aacttaatga agagatcgcc attattttgg catctttttc tgcttccaca agtgcttttg 
     1681 tggaaactgt gaaaggtttg gattataaag cattcaaaca aattgttgaa tcctgtggta 
     1741 attttaaagt tacaaaagga aaagctaaaa aaggtgcctg gaatattggt gaacagaaat 
     1801 caatactgag tcctctttat gcatttgcat cagaggctgc tcgtgttgta cgatcaattt 
     1861 tctcccgcac tcttgaaact gctcaaaatt ctgtgcgtgt tttacagaag gccgctataa 
     1921caatactaga tggaatttca cagtattcac tgagactcat tgatgctatg atgttcacat 
     1981 ctgatttggc tactaacaat ctagttgtaa tggcctacat tacaggtggt gttgttcagt 
     2041 tgacttcgca gtggctaact aacatctttg gcactgttta tgaaaaactc aaacccgtcc 
     2101 ttgattggct tgaagagaag tttaaggaag gtgtagagtt tcttagagac ggttgggaaa 
     2161 ttgttaaatt tatctcaacc tgtgcttgtg aaattgtcgg tggacaaatt gtcacctgtg 
     2221 caaaggaaat taaggagagt gttcagacat tctttaagct tgtaaataaa tttttggctt 
     2281 tgtgtgctga ctctatcatt attggtggag ctaaacttaa agccttgaat ttaggtgaaa 
     2341 gatttgtcac gcactcaaag ggattgtaca gaaagtgtgt taaatccaga gaagaaactg 
     2401gcctactcat gcctctaaaa gccccaaaag aaattatctt cttagaggga gaaacacttc 
     2461 ccacagaagt gttaacagag gaagttgtct tgaaaactgg tgatttacaa ccattagaac 
     2521 aacctactag tgaagctgtt gaagctccat tggttggtac accagtttgt attaacgggc 
     2581 ttatgttgct cgaaatcaaa gacacagaaa agtactgtgc ccttgcacct aatatgatgg 
     2641 taacaaacaa taccttcaca ctcaaaggcg gtgcaccaac aaaggttact tttggtgatg 
     2701 acactgtgat agaagtgcaa ggttacaaga gtgtgaatat cacttttgaa cttgatgaaa 
     2761 ggattgataa agtacttaat gagaagtgct ctgcctatac agttgaactc ggtacagaag 
     2821 taaatgagtt cgcctgtgtt gtggcagatg ctgtcataaa aactttgcaa ccagtatctg 
     2881aattacttac accactgggc attgatttag atgagtggag tatggctaca tactacttat 
     2941 ttgatgagtc tggtgagttt aaattggctt cacatatgta ttgttctttt taccctccag 
     3001 atgaggatga agaagaaggt gattgtgaag aagaagagtt tgagccatca actcaatatg 
     3061 agtatggtac tgaagatgat taccaaggta aacctttgga atttggtgcc acttctgctg 
     3121 ctcttcaacc tgaagaagag caagaagaag attggttaga tgatgatagt caacaaactg 
     3181 ttggtcaaca agacggcagt gaggacaatc agacaactat tattcaaaca attgttgagg 
     3241 ttcaacctca attagagatg gaacttacac cagttgttca gactattgaa gtgaatagtt 
     3301 ttagtggtta tttaaaactt actgacaatg tatacattaa aaatgcagac attgtggaag 
     3361aagctaaaaa ggtaaaacca acagtggttg ttaatgcagc caatgtttac cttaaacatg 
     3421 gaggaggtgt tgcaggagcc ttaaataagg ctactaacaa tgccatgcaa gttgaatctg 
     3481 atgattacat agctactaat ggaccactta aagtgggtgg tagttgtgtt ttaagcggac 
     3541 acaatcttgc taaacactgt cttcatgttg tcggcccaaa tgttaacaaa ggtgaagaca 
     3601 ttcaacttct taagagtgct tatgaaaatt ttaatcagca cgaagttcta cttgcaccat 
     3661 tattatcagc tggtattttt ggtgctgacc ctatacattc tttaagagtt tgtgtagata 
     3721 ctgttcgcac aaatgtctac ttagctgtct ttgataaaaa tctctatgac aaacttgttt 
     3781 caagcttttt ggaaatgaag agtgaaaagc aagttgaaca aaagatcgct gagattccta 
     3841aagaggaagt taagccattt ataactgaaa gtaaaccttc agttgaacag agaaaacaag 
     3901 atgataagaa aatcaaagct tgtgttgaag aagttacaac aactctggaa gaaactaagt 
     3961 tcctcacaga aaacttgtta ctttatattg acattaatgg caatcttcat ccagattctg 
     4021 ccactcttgt tagtgacatt gacatcactt tcttaaagaa agatgctcca tatatagtgg 
     4081 gtgatgttgt tcaagagggt gttttaactg ctgtggttat acctactaaa aaggctggtg 
     4141 gcactactga aatgctagcg aaagctttga gaaaagtgcc aacagacaat tatataacca 
     4201 cttacccggg tcagggttta aatggttaca ctgtagagga ggcaaagaca gtgcttaaaa 
     4261 agtgtaaaag tgccttttac attctaccat ctattatctc taatgagaag caagaaattc 
     4321ttggaactgt ttcttggaat ttgcgagaaa tgcttgcaca tgcagaagaa acacgcaaat 
     4381 taatgcctgt ctgtgtggaa actaaagcca tagtttcaac tatacagcgt aaatataagg 
     4441 gtattaaaat acaagagggt gtggttgatt atggtgctag attttacttt tacaccagta 
     4501 aaacaactgt agcgtcactt atcaacacac ttaacgatct aaatgaaact cttgttacaa 
     4561 tgccacttgg ctatgtaaca catggcttaa atttggaaga agctgctcgg tatatgagat 
     4621 ctctcaaagt gccagctaca gtttctgttt cttcacctga tgctgttaca gcgtataatg 
     4681 gttatcttac ttcttcttct aaaacacctg aagaacattt tattgaaacc atctcacttg 
     4741 ctggttccta taaagattgg tcctattctg gacaatctac acaactaggt atagaatttc 
     4801ttaagagagg tgataaaagt gtatattaca ctagtaatcc taccacattc cacctagatg 
     4861 gtgaagttat cacctttgac aatcttaaga cacttctttc tttgagagaa gtgaggacta 
     4921 ttaaggtgtt tacaacagta gacaacatta acctccacac gcaagttgtg gacatgtcaa 
     4981 tgacatatgg acaacagttt ggtccaactt atttggatgg agctgatgtt actaaaataa 
     5041 aacctcataa ttcacatgaa ggtaaaacat tttatgtttt acctaatgat gacactctac 
     5101 gtgttgaggc ttttgagtac taccacacaa ctgatcctag ttttctgggt aggtacatgt 
     5161 cagcattaaa tcacactaaa aagtggaaat acccacaagt taatggttta acttctatta 
     5221 aatgggcaga taacaactgt tatcttgcca ctgcattgtt aacactccaa caaatagagt 
     5281tgaagtttaa tccacctgct ctacaagatg cttattacag agcaagggct ggtgaagctg 
     5341 ataacttttg tgcacttatc ttagcctact gtaataagac agtaggtgag ttaggtgatg 
     5401 ttagagaaac aatgagttac ttgtttcaac atgccaattt agattcttgc aaaagagtct 
     5461 tgaacgtggt gtgtaaaact tgtggacaac agcagacaac ccttaagggt gtagaagctg 
     5521 ttatgtacat gggcacactt tcttatgaac aatttaagaa aggtgttcag ataccttgta 
     5581 cgtgtggtaa acaagctaca aaatatctag tacaacagga gtcacctttt gttatgatgt 
     5641 cagcaccacc tgctcagtat gaacttaagc atggtacatt tacttgtgct agtgagtaca 
     5701 ctggtaatta ccagtgtggt cactataaac atataacttc taaagaaact ttgtattgca 
     5761tagacggtgc tttacttaca aagtcctcag aatacaaagg tcctattacg gatgttttct 
     5821 acaaagaaaa cagttacaca acaaccataa aaccagttac ttataaattg gatggtgttg 
     5881 tttgtacaga aattgaccct aagttggaca attattataa gaaagacaat tcttatttta 
     5941 cagagcaacc aattgatctt gtaccaaacc aaccatatcc aaacgcaagc ttcgataatt 
     6001 ttaagtttgt atgtgataat atcaaatttg ctgatgattt aaaccagtta actggttata 
     6061 agaaacctgc ttcaagagag cttaaagtta catttttccc tgacttaaat ggtgatgtgg 
     6121 tggctattga ttataaacac tacacaccct cttttaagaa aggagctaaa ttgttacata 
     6181 aacctattgt ttggcatgtt aacaatgcaa ctaataaagc cacgtataaa ccaaatacct 
     6241ggtgtatacg ttgtctttgg agcacaaaac cagttgaaac atcaaattcg tttgatgtac 
     6301 tgaagtcaga ggacgcgcag ggaatggata atcttgcctg cgaagatcta aaaccagtct 
     6361 ctgaagaagt agtggaaaat cctaccatac agaaagacgt tcttgagtgt aatgtgaaaa 
     6421 ctaccgaagt tgtaggagac attatactta aaccagcaaa taatagttta aaaattacag 
     6481 aagaggttgg ccacacagat ctaatggctg cttatgtaga caattctagt cttactatta 
     6541 agaaacctaa tgaattatct agagtattag gtttgaaaac ccttgctact catggtttag 
     6601 ctgctgttaa tagtgtccct tgggatacta tagctaatta tgctaagcct tttcttaaca 
     6661 aagttgttag tacaactact aacatagtta cacggtgttt aaaccgtgtt tgtactaatt 
     6721atatgcctta tttctttact ttattgctac aattgtgtac ttttactaga agtacaaatt 
     6781 ctagaattaa agcatctatg ccgactacta tagcaaagaa tactgttaag agtgtcggta 
     6841 aattttgtct agaggcttca tttaattatt tgaagtcacc taatttttct aaactgataa 
     6901 atattacaat ttggttttta ctattaagtg tttgcctagg ttctttaatc tactcaaccg 
     6961 ctgctttagg tgttttaatg tctaatttag gcatgccttc ttactgtact ggttacagag 
     7021 aaggctattt gaactctact aatgtcacta ttgcaaccta ctgtactggt tctatacctt 
     7081 gtagtgtttg tcttagtggt ttagattctt tagacaccta tccttcttta gaaactatac 
     7141 aaattaccat ttcatctttt aaatgggatt taactgcttt tggcttagtt gcagagtggt 
     7201ttttggcata tattcttttc actaggtttt tctatgtact tggattggct gcaatcatgc 
     7261 aattgttttt cagctatttt gcagtacatt ttattagtaa ttcttggctt atgtggttaa 
     7321 taattaatct tgtacaaatg gccccgattt cagctatggt tagaatgtac atcttctttg 
     7381 catcatttta ttatgtatgg aaaagttatg tgcatgttgt agacggttgt aattcatcaa 
     7441 cttgtatgat gtgttacaaa cgtaatagag caacaagagt cgaatgtaca actattgtta 
     7501 atggtgttag aaggtccttt tatgtctatg ctaatggagg taaaggcttt tgcaaactac 
     7561 acaattggaa ttgtgttaat tgtgatacat tctgtgctgg tagtacattt attagtgatg 
     7621 aagttgcgag agacttgtca ctacagttta aaagaccaat aaatcctact gaccagtctt 
     7681cttacatcgt tgatagtgtt acagtgaaga atggttccat ccatctttac tttgataaag 
     7741 ctggtcaaaa gacttatgaa agacattctc tctctcattt tgttaactta gacaacctga 
     7801 gagctaataa cactaaaggt tcattgccta ttaatgttat agtttttgat ggtaaatcaa 
     7861 aatgtgaaga atcatctgca aaatcagcgt ctgtttacta cagtcagctt atgtgtcaac 
     7921 ctatactgtt actagatcag gcattagtgt ctgatgttgg tgatagtgcg gaagttgcag 
     7981 ttaaaatgtt tgatgcttac gttaatacgt tttcatcaac ttttaacgta ccaatggaaa 
     8041 aactcaaaac actagttgca actgcagaag ctgaacttgc aaagaatgtg tccttagaca 
     8101 atgtcttatc tacttttatt tcagcagctc ggcaagggtt tgttgattca gatgtagaaa 
     8161ctaaagatgt tgttgaatgt cttaaattgt cacatcaatc tgacatagaa gttactggcg 
     8221 atagttgtaa taactatatg ctcacctata acaaagttga aaacatgaca ccccgtgacc 
     8281 ttggtgcttg tattgactgt agtgcgcgtc atattaatgc gcaggtagca aaaagtcaca 
     8341 acattgcttt gatatggaac gttaaagatt tcatgtcatt gtctgaacaa ctacgaaaac 
     8401 aaatacgtag tgctgctaaa aagaataact taccttttaa gttgacatgt gcaactacta 
     8461 gacaagttgt taatgttgta acaacaaaga tagcacttaa gggtggtaaa attgttaata 
     8521 attggttgaa gcagttaatt aaagttacac ttgtgttcct ttttgttgct gctattttct 
     8581 atttaataac acctgttcat gtcatgtcta aacatactga cttttcaagt gaaatcatag 
     8641gatacaaggc tattgatggt ggtgtcactc gtgacatagc atctacagat acttgttttg 
     8701 ctaacaaaca tgctgatttt gacacatggt ttagccagcg tggtggtagt tatactaatg 
     8761 acaaagcttg cccattgatt gctgcagtca taacaagaga agtgggtttt gtcgtgcctg 
     8821 gtttgcctgg cacgatatta cgcacaacta atggtgactt tttgcatttc ttacctagag 
     8881 tttttagtgc agttggtaac atctgttaca caccatcaaa acttatagag tacactgact 
     8941 ttgcaacatc agcttgtgtt ttggctgctg aatgtacaat ttttaaagat gcttctggta 
     9001 agccagtacc atattgttat gataccaatg tactagaagg ttctgttgct tatgaaagtt 
     9061 tacgccctga cacacgttat gtgctcatgg atggctctat tattcaattt cctaacacct 
     9121accttgaagg ttctgttaga gtggtaacaa cttttgattc tgagtactgt aggcacggca 
     9181 cttgtgaaag atcagaagct ggtgtttgtg tatctactag tggtagatgg gtacttaaca 
     9241 atgattatta cagatcttta ccaggagttt tctgtggtgt agatgctgta aatttactta 
     9301 ctaatatgtt tacaccacta attcaaccta ttggtgcttt ggacatatca gcatctatag 
     9361 tagctggtgg tattgtagct atcgtagtaa catgccttgc ctactatttt atgaggttta 
     9421 gaagagcttt tggtgaatac agtcatgtag ttgcctttaa tactttacta ttccttatgt 
     9481 cattcactgt actctgttta acaccagttt actcattctt acctggtgtt tattctgtta 
     9541 tttacttgta cttgacattt tatcttacta atgatgtttc ttttttagca catattcagt 
     9601ggatggttat gttcacacct ttagtacctt tctggataac aattgcttat atcatttgta 
     9661 tttccacaaa gcatttctat tggttcttta gtaattacct aaagagacgt gtagtcttta 
     9721 atggtgtttc ctttagtact tttgaagaag ctgcgctgtg cacctttttg ttaaataaag 
     9781 aaatgtatct aaagttgcgt agtgatgtgc tattacctct tacgcaatat aatagatact 
     9841 tagctcttta taataagtac aagtatttta gtggagcaat ggatacaact agctacagag 
     9901 aagctgcttg ttgtcatctc gcaaaggctc tcaatgactt cagtaactca ggttctgatg 
     9961 ttctttacca accaccacaa acctctatca cctcagctgt tttgcagagt ggttttagaa 
    10021 aaatggcatt cccatctggt aaagttgagg gttgtatggt acaagtaact tgtggtacaa 
    10081ctacacttaa cggtctttgg cttgatgacg tagtttactg tccaagacat gtgatctgca 
    10141 cctctgaaga catgcttaac cctaattatg aagatttact cattcgtaag tctaatcata 
    10201 atttcttggt acaggctggt aatgttcaac tcagggttat tggacattct atgcaaaatt 
    10261 gtgtacttaa gcttaaggtt gatacagcca atcctaagac acctaagtat aagtttgttc 
    10321 gcattcaacc aggacagact ttttcagtgt tagcttgtta caatggttca ccatctggtg 
    10381 tttaccaatg tgctatgagg cccaatttca ctattaaggg ttcattcctt aatggttcat 
    10441 gtggtagtgt tggttttaac atagattatg actgtgtctc tttttgttac atgcaccata 
    10501 tggaattacc aactggagtt catgctggca cagacttaga aggtaacttt tatggacctt 
    10561ttgttgacag gcaaacagca caagcagctg gtacggacac aactattaca gttaatgttt 
    10621 tagcttggtt gtacgctgct gttataaatg gagacaggtg gtttctcaat cgatttacca 
    10681 caactcttaa tgactttaac cttgtggcta tgaagtacaa ttatgaacct ctaacacaag 
    10741 accatgttga catactagga cctctttctg ctcaaactgg aattgccgtt ttagatatgt 
    10801 gtgcttcatt aaaagaatta ctgcaaaatg gtatgaatgg acgtaccata ttgggtagtg 
    10861 ctttattaga agatgaattt acaccttttg atgttgttag acaatgctca ggtgttactt 
    10921 tccaaagtgc agtgaaaaga acaatcaagg gtacacacca ctggttgtta ctcacaattt 
    10981 tgacttcact tttagtttta gtccagagta ctcaatggtc tttgttcttt tttttgtatg 
    11041aaaatgcctt tttacctttt gctatgggta ttattgctat gtctgctttt gcaatgatgt 
    11101 ttgtcaaaca taagcatgca tttctctgtt tgtttttgtt accttctctt gccactgtag 
    11161 cttattttaa tatggtctat atgcctgcta gttgggtgat gcgtattatg acatggttgg 
    11221 atatggttga tactagtttg aagctaaaag actgtgttat gtatgcatca gctgtagtgt 
    11281 tactaatcct tatgacagca agaactgtgt atgatgatgg tgctaggaga gtgtggacac 
    11341 ttatgaatgt cttgacactc gtttataaag tttattatgg taatgcttta gatcaagcca 
    11401 tttccatgtg ggctcttata atctctgtta cttctaacta ctcaggtgta gttacaactg 
    11461 tcatgttttt ggccagaggt attgttttta tgtgtgttga gtattgccct attttcttca 
    11521taactggtaa tacacttcag tgtataatgc tagtttattg tttcttaggc tatttttgta 
    11581 cttgttactt tggcctcttt tgtttactca accgctactt tagactgact cttggtgttt 
    11641 atgattactt agtttctaca caggagttta gatatatgaa ttcacaggga ctactcccac 
    11701 ccaagaatag catagatgcc ttcaaactca acattaaatt gttgggtgtt ggtggcaaac 
    11761 cttgtatcaa agtagccact gtacagtcta aaatgtcaga tgtaaagtgc acatcagtag 
    11821 tcttactctc agttttgcaa caactcagag tagaatcatc atctaaattg tgggctcaat 
    11881 gtgtccagtt acacaatgac attctcttag ctaaagatac tactgaagcc tttgaaaaaa 
    11941 tggtttcact actttctgtt ttgctttcca tgcagggtgc tgtagacata aacaagcttt 
    12001gtgaagaaat gctggacaac agggcaacct tacaagctat agcctcagag tttagttccc 
    12061 ttccatcata tgcagctttt gctactgctc aagaagctta tgagcaggct gttgctaatg 
    12121 gtgattctga agttgttctt aaaaagttga agaagtcttt gaatgtggct aaatctgaat 
    12181 ttgaccgtga tgcagccatg caacgtaagt tggaaaagat ggctgatcaa gctatgaccc 
    12241 aaatgtataa acaggctaga tctgaggaca agagggcaaa agttactagt gctatgcaga 
    12301 caatgctttt cactatgctt agaaagttgg acaatgatgc actcaacaac attatcaaca 
    12361 atgcaagaga tggttgtgtt cccttgaaca taatacctct tacaacagca gccaaactaa 
    12421 tggttgtcat accagactat aacacatata aaaatacgtg tgatggtaca acatttactt 
    12481atgcatcagc attgtgggaa atccaacagg ttgtagatgc agatagtaaa attgttcaac 
    12541 ttagtgaaat tagtatggac aattcaccta atttagcatg gcctcttatt gtaacagctt 
    12601 taagggccaa ttctgctgtc aaattacaga ataatgagct tagtcctgtt gcactacgac 
    12661 agatgtcttg tgctgccggt actacacaaa ctgcttgcac tgatgacaat gcgttagctt 
    12721 actacaacac aacaaaggga ggtaggtttg tacttgcact gttatccgat ttacaggatt 
    12781 tgaaatgggc tagattccct aagagtgatg gaactggtac tatctataca gaactggaac 
    12841 caccttgtag gtttgttaca gacacaccta aaggtcctaa agtgaagtat ttatacttta 
    12901 ttaaaggatt aaacaaccta aatagaggta tggtacttgg tagtttagct gccacagtac 
    12961gtctacaagc tggtaatgca acagaagtgc ctgccaattc aactgtatta tctttctgtg 
    13021 cttttgctgt agatgctgct aaagcttaca aagattatct agctagtggg ggacaaccaa 
    13081 tcactaattg tgttaagatg ttgtgtacac acactggtac tggtcaggca ataacagtta 
    13141 caccggaagc caatatggat caagaatcct ttggtggtgc atcgtgttgt ctgtactgcc 
    13201 gttgccacat agatcatcca aatcctaaag gattttgtga cttaaaaggt aagtatgtac 
    13261 aaatacctac aacttgtgct aatgaccctg tgggttttac acttaaaaac acagtctgta 
    13321 ccgtctgcgg tatgtggaaa ggttatggct gtagttgtga tcaactccgc gaacccatgc 
    13381 ttcagtcagc tgatgcacaa tcgtttttaa acgggtttgc ggtgtaagtg cagcccgtct 
    13441tacaccgtgc ggcacaggca ctagtactga tgtcgtatac agggcttttg acatctacaa 
    13501 tgataaagta gctggttttg ctaaattcct aaaaactaat tgttgtcgct tccaagaaaa 
    13561 ggacgaagat gacaatttaa ttgattctta ctttgtagtt aagagacaca ctttctctaa 
    13621 ctaccaacat gaagaaacaa tttataattt acttaaggat tgtccagctg ttgctaaaca 
    13681 tgacttcttt aagtttagaa tagacggtga catggtacca catatatcac gtcaacgtct 
    13741 tactaaatac acaatggcag acctcgtcta tgctttaagg cattttgatg aaggtaattg 
    13801 tgacacatta aaagaaatac ttgtcacata caattgttgt gatgatgatt atttcaataa 
    13861 aaaggactgg tatgattttg tagaaaaccc agatatatta cgcgtatacg ccaacttagg 
    13921tgaacgtgta cgccaagctt tgttaaaaac agtacaattc tgtgatgcca tgcgaaatgc 
    13981 tggtattgtt ggtgtactga cattagataa tcaagatctc aatggtaact ggtatgattt 
    14041 cggtgatttc atacaaacca cgccaggtag tggagttcct gttgtagatt cttattattc 
    14101 attgttaatg cctatattaa ccttgaccag ggctttaact gcagagtcac atgttgacac 
    14161 tgacttaaca aagccttaca ttaagtggga tttgttaaaa tatgacttca cggaagagag 
    14221 gttaaaactc tttgaccgtt attttaaata ttgggatcag acataccacc caaattgtgt 
    14281 taactgtttg gatgacagat gcattctgca ttgttcaaac tttaatgttt tattctctac 
    14341 agtgttccca cttacaagtt ttggaccact agtgagaaaa atatttgttg atggtgttcc 
    14401atttgtagtt tcaactggat accacttcag agagctaggt gttgtacata atcaggatgt 
    14461 aaacttacat agctctagac ttagttttaa ggaattactt gtgtatgctg ctgaccctgc 
    14521 tatgcacgct gcttctggta atctattact agataaacgc actacgtgct tttcagtagc 
    14581 tgcacttact aacaatgttg cttttcaaac tgtcaaacct ggtaatttta acaaagactt 
    14641 ctatgacttt gctgtgtcta agggtttctt taaggaagga agttctgttg aattaaaaca 
    14701 cttcttcttt gctcaggatg gtaatgctgc tatcagcgat tatgactact atcgttataa 
    14761 tctaccaaca atgtgtgata tcagacaact actatttgta gttgaagttg ttgataagta 
    14821 ctttgattgt tacgatggtg gctgtattaa tgctaaccaa gtcatcgtca acaacctaga 
    14881caaatcagct ggttttccat ttaataaatg gggtaaggct agactttatt atgattcaat 
    14941 gagttatgag gatcaagatg cacttttcgc atatacaaaa cgtaatgtca tccctactat 
    15001 aactcaaatg aatcttaagt atgccattag tgcaaagaat agagctcgca ccgtagctgg 
    15061 tgtctctatc tgtagtacta tgaccaatag acagtttcat caaaaattat tgaaatcaat 
    15121 agccgccact agaggagcta ctgtagtaat"

x22 = "ctcttgtaga tctgttctct aaacgaactt taaaatctgt gtggctgtca ctcggctgca 
       61 tgcttagtgc actcacgcag tataattaat aactaattac tgtcgttgac aggacacgag 
      121 taactcgtct atcttctgca ggctgcttac ggtttcgtcc gtgttgcagc cgatcatcag 
      181 cacatctagg ttttgtccgg gtgtgaccga aaggtaagat ggagagcctt gtccctggtt 
      241 tcaacgagaa aacacacgtc caactcagtt tgcctgtttt acaggttcgc gacgtgctcg 
      301 tacgtggctt tggagactcc gtggaggagg tcttatcaga ggcacgtcaa catcttaaag 
      361 atggcacttg tggcttagta gaagttgaaa aaggcgtttt gcctcaactt gaacagccct 
      421 atgtgttcat caaacgttcg gatgctcgaa ctgcacctca tggtcatgtt atggttgagc 
      481tggtagcaga actcgaaggc attcagtacg gtcgtagtgg tgagacactt ggtgtccttg 
      541 tccctcatgt gggcgaaata ccagtggctt accgcaaggt tcttcttcgt aagaacggta 
      601 ataaaggagc tggtggccat agttacggcg ccgatctaaa gtcatttggc ttaggcgacg 
      661 agcttggcac tgatccttat gaagattttc aagaaaactg gaacactaaa catagcagtg 
      721 gtgttacccg tgaactcatg cgtgagctta acggaggggc atacactcgc tatgtcgata 
      781 acaacttctg tggccctgat ggctaccctc ttgagtgcat taaagacctt ctagcacgtg 
      841 ctggtaaagc ttcatgcact ttgtctgaac aactggactt tattgacact aagaggggtg 
      901 tatactgctg ccgtgaacat gagcatgaaa ttgcttggta cacggaacgt tctgaaaaga 
      961gctatgaatt gcagacacct tttgaaatta aattggcaaa gaaatttgac accttcaatg 
     1021 gggaatgtcc aaattttgta tttcccttaa attccataat caagactatt caaccaaggg 
     1081 ttgaaaagaa aaagcttgat ggctttatgg gtagaattcg atctgtctat ccagttgcgt 
     1141 caccaaatga atgcaaccaa atgtgccttt caactctcat gaagtgtgat cattgtggtg 
     1201 aaacttcatg gcagacgggc gattttgtta aagccacttg cgaattttgt ggcactgaga 
     1261 atttgactaa agaaggtgcc actacttgtg gttacttacc ccaaaatgct gttgttaaaa 
     1321 tttattgtcc agcatgtcac aattcagaag taggacctga gcatagtctt gccgaatacc 
     1381 atannnaatc tggcttgaaa accattcttc gtaagggtgg tcgcactatt gcctttggag 
     1441gctgtgtgtt ctcttatgtt ggttgccata acaagtgtgc ctattgggtt ccacgtgcta 
     1501 gcgctaacat aggttgtaac catacaggtg ttgttggaga aggttccgaa ggtcttaatg 
     1561 acaaccttct tgaaataatc caaaaagaga aagtcaacat caatattgtt ggtgacttta 
     1621 aacttaatga agagatcgcc attattttgg catctttttc tgcttccaca agtgcttttg 
     1681 tggaaactgt gaaaggtttg gattataaag cattcaaaca aattgttgaa tcctgtggta 
     1741 attttaaagt tacaaaagga aaagctaaaa aaggtgcctg gaatattggt gaacagaaat 
     1801 caatactgag tcctctttat gcatttgcat cagaggctgc tcgtgttgta cgatcaattt 
     1861 tctcccgcac tcttgaaact gctcaaaatt ctgtgcgtgt tttacagaag gccgctataa 
     1921caatactaga tggaatttca cagtattcac tgagactcat tgatgctatg atgttcacat 
     1981 ctgatttggc tactaacaat ctagttgtaa tggcctacat tacaggtggt gttgttcagt 
     2041 tgacttcgca gtggctaact aacatctttg gcactgttta tgaaaaactc aaacccgtcc 
     2101 ttgattggct tgaagagaag tttaaggaag gtgtagagtt tcttagagac ggttgggaaa 
     2161 ttgttaaatt tatctcaacc tgtgcttgtg aaattgtcgg tggacaaatt gtcacctgtg 
     2221 caaaggaaat taaggagagt gttcagacat tctttaagct tgtaaataaa tttttggctt 
     2281 tgtgtgctga ctctatcatt attggtggag ctaaacttaa agccttgaat ttaggtgaaa 
     2341 gatttgtcac gcactcaaag ggattgtaca gaaagtgtgt taaatccaga gaagaaactg 
     2401gcctactcat gcctctaaaa gccccaaaag aaattatctt cttagaggga gaaacacttc 
     2461 ccacagaagt gttaacagag gaagttgtct tgaaaactgg tgatttacaa ccattagaac 
     2521 aacctactag tgaagctgtt gaagctccat tggttggtac accagtttgt attaacgggc 
     2581 ttatgttgct cgaaatcaaa gacacagaaa agtactgtgc ccttgcacct aatatgatgg 
     2641 taacaaacaa taccttcaca ctcaaaggcg gtgcaccaac aaaggttact tttggtgatg 
     2701 acactgtgat agaagtgcaa ggttacaaga gtgtgaatat cacttttgaa cttgatgaaa 
     2761 ggattgataa agtacttaat gagaagtgct ctgcctatac agttgaactc ggtacagaag 
     2821 taaatgagtt cgcctgtgtt gtggcagatg ctgtcataaa aactttgcaa ccagtatctg 
     2881aattacttac accactgggc attgatttag atgagtggag tatggctaca tactacttat 
     2941 ttgatgagtc tggtgagttt aaattggctt cacatatgta ttgttctttt taccctccag 
     3001 atgaggatga agaagaaggt gattgtgaag aagaagagtt tgagccatca actcaatatg 
     3061 agtatggtac tgaagatgat taccaaggta aacctttgga atttggtgcc acttctgctg 
     3121 ctcttcaacc tgaagaagag caagaagaag attggttaga tgatgatagt caacaaactg 
     3181 ttggtcaaca agacggcagt gaggacaatc agacaactat tattcaaaca attgttgagg 
     3241 ttcaacctca attagagatg gaacttacac cagttgttca gactattgaa gtgaatagtt 
     3301 ttagtggtta tttaaaactt actgacaatg tatacattaa aaatgcagac attgtggaag 
     3361aagctaaaaa ggtaaaacca acagtggttg ttaatgcagc caatgtttac cttaaacatg 
     3421 gaggaggtgt tgcaggagcc ttaaataagg ctactaacaa tgccatgcaa gttgaatctg 
     3481 atgattacat agctactaat ggaccactta aagtgggtgg tagttgtgtt ttaagcggac 
     3541 acaatcttgc taaacactgt cttcatgttg tcggcccaaa tgttaacaaa ggtgaagaca 
     3601 ttcaacttct taagagtgct tatgaaaatt ttaatcagca cgaagttcta cttgcaccat 
     3661 tattatcagc tggtattttt ggtgctgacc ctatacattc tttaagagtt tgtgtagata 
     3721 ctgttcgcac aaatgtctac ttagctgtct ttgataaaaa tctctatgac aaacttgttt 
     3781 caagcttttt ggaaatgaag agtgaaaagc aagttgaaca aaagatcgct gagattccta 
     3841aagaggaagt taagccattt ataactgaaa gtaaaccttc agttgaacag agaaaacaag 
     3901 atgataagaa aatcaaagct tgtgttgaag aagttacaac aactctggaa gaaactaagt 
     3961 tcctcacaga aaacttgtta ctttatattg acattaatgg caatcttcat ccagattctg 
     4021 ccactcttgt tagtgacatt gacatcactt tcttaaagaa agatgctcca tatatagtgg 
     4081 gtgatgttgt tcaagagggt gttttaactg ctgtggttat acctactaaa aaggctggtg 
     4141 gcactactga aatgctagcg aaagctttga gaaaagtgcc aacagacaat tatataacca 
     4201 cttacccggg tcagggttta aatggttaca ctgtagagga ggcaaagaca gtgcttaaaa 
     4261 agtgtaaaag tgccttttac attctaccat ctattatctc taatgagaag caagaaattc 
     4321ttggaactgt ttcttggaat ttgcgagaaa tgcttgcaca tgcagaagaa acacgcaaat 
     4381 taatgcctgt ctgtgtggaa actaaagcca tagtttcaac tatacagcgt aaatataagg 
     4441 gtattaaaat acaagagggt gtggttgatt atggtgctag attttacttt tacaccagta 
     4501 aaacaactgt agcgtcactt atcaacacac ttaacgatct aaatgaaact cttgttacaa 
     4561 tgccacttgg ctatgtaaca catggcttaa atttggaaga agctgctcgg tatatgagat 
     4621 ctctcaaagt gccagctaca gtttctgttt cttcacctga tgctgttaca gcgtataatg 
     4681 gttatcttac ttcttcttct aaaacacctg aagaacattt tattgaaacc atctcacttg 
     4741 ctggttccta taaagattgg tcctattctg gacaatctac acaactaggt atagaatttc 
     4801ttaagagagg tgataaaagt gtatattaca ctagtaatcc taccacattc cacctagatg 
     4861 gtgaagttat cacctttgac aatcttaaga cacttctttc tttgagagaa gtgaggacta 
     4921 ttaaggtgtt tacaacagta gacaacatta acctccacac gcaagttgtg gacatgtcaa 
     4981 tgacatatgg acaacagttt ggtccaactt atttggatgg agctgatgtt actaaaataa 
     5041 aacctcataa ttcacatgaa ggtaaaacat tttatgtttt acctaatgat gacactctac 
     5101 gtgttgaggc ttttgagtac taccacacaa ctgatcctag ttttctgggt aggtacatgt 
     5161 cagcattaaa tcacactaaa aagtggaaat acccacaagt taatggttta acttctatta 
     5221 aatgggcaga taacaactgt tatcttgcca ctgcattgtt aacactccaa caaatagagt 
     5281tgaagtttaa tccacctgct ctacaagatg cttattacag agcaagggct ggtgaagctg 
     5341 ataacttttg tgcacttatc ttagcctact gtaataagac agtaggtgag ttaggtgatg 
     5401 ttagagaaac aatgagttac ttgtttcaac atgccaattt agattcttgc aaaagagtct 
     5461 tgaacgtggt gtgtaaaact tgtggacaac agcagacaac ccttaagggt gtagaagctg 
     5521 ttatgtacat gggcacactt tcttatgaac aatttaagaa aggtgttcag ataccttgta 
     5581 cgtgtggtaa acaagctaca aaatatctag tacaacagga gtcacctttt gttatgatgt 
     5641 cagcaccacc tgctcagtat gaacttaagc atggtacatt tacttgtgct agtgagtaca 
     5701 ctggtaatta ccagtgtggt cactataaac atataacttc taaagaaact ttgtattgca 
     5761tagacggtgc tttacttaca aagtcctcag aatacaaagg tcctattacg gatgttttct 
     5821 acaaagaaaa cagttacaca acaaccataa aaccagttac ttataaattg gatggtgttg 
     5881 tttgtacaga aattgaccct aagttggaca attattataa gaaagacaat tcttatttta 
     5941 cagagcaacc aattgatctt gtaccaaacc aaccatatcc aaacgcaagc ttcgataatt 
     6001 ttaagtttgt atgtgataat atcaaatttg ctgatgattt aaaccagtta actggttata 
     6061 agaaacctgc ttcaagagag cttaaagtta catttttccc tgacttaaat ggtgatgtgg 
     6121 tggctattga ttataaacac tacacaccct cttttaagaa aggagctaaa ttgttacata 
     6181 aacctattgt ttggcatgtt aacaatgcaa ctaataaagc cacgtataaa ccaaatacct 
     6241ggtgtatacg ttgtctttgg agcacaaaac cagttgaaac atcaaattcg tttgatgtac 
     6301 tgaagtcaga ggacgcgcag ggaatggata atcttgcctg cgaagatcta aaaccagtct 
     6361 ctgaagaagt agtggaaaat cctaccatac agaaagacgt tcttgagtgt aatgtgaaaa 
     6421 ctaccgaagt tgtaggagac attatactta aaccagcaaa taatagttta aaaattacag 
     6481 aagaggttgg ccacacagat ctaatggctg cttatgtaga caattctagt cttactatta 
     6541 agaaacctaa tgaattatct agagtattag gtttgaaaac ccttgctact catggtttag 
     6601 ctgctgttaa tagtgtccct tgggatacta tagctaatta tgctaagcct tttcttaaca 
     6661 aagttgttag tacaactact aacatagtta cacggtgttt aaaccgtgtt tgtactaatt 
     6721atatgcctta tttctttact ttattgctac aattgtgtac ttttactaga agtacaaatt 
     6781 ctagaattaa agcatctatg ccgactacta tagcaaagaa tactgttaag agtgtcggta 
     6841 aattttgtct agaggcttca tttaattatt tgaagtcacc taatttttct aaactgataa 
     6901 atattacaat ttggttttta ctattaagtg tttgcctagg ttctttaatc tactcaaccg 
     6961 ctgctttagg tgttttaatg tctaatttag gcatgccttc ttactgtact ggttacagag 
     7021 aaggctattt gaactctact aatgtcacta ttgcaaccta ctgtactggt tctatacctt 
     7081 gtagtgtttg tcttagtggt ttagattctt tagacaccta tccttcttta gaaactatac 
     7141 aaattaccat ttcatctttt aaatgggatt taactgcttt tggcttagtt gcagagtggt 
     7201ttttggcata tattcttttc actaggtttt tctatgtact tggattggct gcaatcatgc 
     7261 aattgttttt cagctatttt gcagtacatt ttattagtaa ttcttggctt atgtggttaa 
     7321 taattaatct tgtacaaatg gccccgattt cagctatggt tagaatgtac atcttctttg 
     7381 catcatttta ttatgtatgg aaaagttatg tgcatgttgt agacggttgt aattcatcaa 
     7441 cttgtatgat gtgttacaaa cgtaatagag caacaagagt cgaatgtaca actattgtta 
     7501 atggtgttag aaggtccttt tatgtctatg ctaatggagg taaaggcttt tgcaaactac 
     7561 acaattggaa ttgtgttaat tgtgatacat tctgtgctgg tagtacattt attagtgatg 
     7621 aagttgcgag agacttgtca ctacagttta aaagaccaat aaatcctact gaccagtctt 
     7681cttacatcgt tgatagtgtt acagtgaaga atggttccat ccatctttac tttgataaag 
     7741 ctggtcaaaa gacttatgaa agacattctc tctctcattt tgttaactta gacaacctga 
     7801 gagctaataa cactaaaggt tcattgccta ttaatgttat agtttttgat ggtaaatcaa 
     7861 aatgtgaaga atcatctgca aaatcagcgt ctgtttacta cagtcagctt atgtgtcaac 
     7921 ctatactgtt actagatcag gcattagtgt ctgatgttgg tgatagtgcg gaagttgcag 
     7981 ttaaaatgtt tgatgcttac gttaatacgt tttcatcaac ttttaacgta ccaatggaaa 
     8041 aactcaaaac actagttgca actgcagaag ctgaacttgc aaagaatgtg tccttagaca 
     8101 atgtcttatc tacttttatt tcagcagctc ggcaagggtt tgttgattca gatgtagaaa 
     8161ctaaagatgt tgttgaatgt cttaaattgt cacatcaatc tgacatagaa gttactggcg 
     8221 atagttgtaa taactatatg ctcacctata acaaagttga aaacatgaca ccccgtgacc 
     8281 ttggtgcttg tattgactgt agtgcgcgtc atattaatgc gcaggtagca aaaagtcaca 
     8341 acattgcttt gatatggaac gttaaagatt tcatgtcatt gtctgaacaa ctacgaaaac 
     8401 aaatacgtag tgctgctaaa aagaataact taccttttaa gttgacatgt gcaactacta 
     8461 gacaagttgt taatgttgta acaacaaaga tagcacttaa gggtggtaaa attgttaata 
     8521 attggttgaa gcagttaatt aaagttacac ttgtgttcct ttttgttgct gctattttct 
     8581 atttaataac acctgttcat gtcatgtcta aacatactga cttttcaagt gaaatcatag 
     8641gatacaaggc tattgatggt ggtgtcactc gtgacatagc atctacagat acttgttttg 
     8701 ctaacaaaca tgctgatttt gacacatggt ttagccagcg tggtggtagt tatactaatg 
     8761 acaaagcttg cccattgatt gctgcagtca taacaagaga agtgggtttt gtcgtgcctg 
     8821 gtttgcctgg cacgatatta cgcacaacta atggtgactt tttgcatttc ttacctagag 
     8881 tttttagtgc agttggtaac atctgttaca caccatcaaa acttatagag tacactgact 
     8941 ttgcaacatc agcttgtgtt ttggctgctg aatgtacaat ttttaaagat gcttctggta 
     9001 agccagtacc atattgttat gataccaatg tactagaagg ttctgttgct tatgaaagtt 
     9061 tacgccctga cacacgttat gtgctcatgg atggctctat tattcaattt cctaacacct 
     9121accttgaagg ttctgttaga gtggtaacaa cttttgattc tgagtactgt aggcacggca 
     9181 cttgtgaaag atcagaagct ggtgtttgtg tatctactag tggtagatgg gtacttaaca 
     9241 atgattatta cagatcttta ccaggagttt tctgtggtgt agatgctgta aatttactta 
     9301 ctaatatgtt tacaccacta attcaaccta ttggtgcttt ggacatatca gcatctatag 
     9361 tagctggtgg tattgtagct atcgtagtaa catgccttgc ctactatttt atgaggttta 
     9421 gaagagcttt tggtgaatac agtcatgtag ttgcctttaa tactttacta ttccttatgt 
     9481 cattcactgt actctgttta acaccagttt actcattctt acctggtgtt tattctgtta 
     9541 tttacttgta cttgacattt tatcttacta atgatgtttc ttttttagca catattcagt 
     9601ggatggttat gttcacacct ttagtacctt tctggataac aattgcttat atcatttgta 
     9661 tttccacaaa gcatttctat tggttcttta gtaattacct aaagagacgt gtagtcttta 
     9721 atggtgtttc ctttagtact tttgaagaag ctgcgctgtg cacctttttg ttaaataaag 
     9781 aaatgtatct aaagttgcgt agtgatgtgc tattacctct tacgcaatat aatagatact 
     9841 tagctcttta taataagtac aagtatttta gtggagcaat ggatacaact agctacagag 
     9901 aagctgcttg ttgtcatctc gcaaaggctc tcaatgactt cagtaactca ggttctgatg 
     9961 ttctttacca accaccacaa acctctatca cctcagctgt tttgcagagt ggttttagaa 
    10021 aaatggcatt cccatctggt aaagttgagg gttgtatggt acaagtaact tgtggtacaa 
    10081ctacacttaa cggtctttgg cttgatgacg tagtttactg tccaagacat gtgatctgca 
    10141 cctctgaaga catgcttaac cctaattatg aagatttact cattcgtaag tctaatcata 
    10201 atttcttggt acaggctggt aatgttcaac tcagggttat tggacattct atgcaaaatt 
    10261 gtgtacttaa gcttaaggtt gatacagcca atcctaagac acctaagtat aagtttgttc 
    10321 gcattcaacc aggacagact ttttcagtgt tagcttgtta caatggttca ccatctggtg 
    10381 tttaccaatg tgctatgagg cccaatttca ctattaaggg ttcattcctt aatggttcat 
    10441 gtggtagtgt tggttttaac atagattatg actgtgtctc tttttgttac atgcaccata 
    10501 tggaattacc aactggagtt catgctggca cagacttaga aggtaacttt tatggacctt 
    10561ttgttgacag gcaaacagca caagcagctg gtacggacac aactattaca gttaatgttt 
    10621 tagcttggtt gtacgctgct gttataaatg gagacaggtg gtttctcaat cgatttacca 
    10681 caactcttaa tgactttaac cttgtggcta tgaagtacaa ttatgaacct ctaacacaag 
    10741 accatgttga catactagga cctctttctg ctcaaactgg aattgccgtt ttagatatgt 
    10801 gtgcttcatt aaaagaatta ctgcaaaatg gtatgaatgg acgtaccata ttgggtagtg 
    10861 ctttattaga agatgaattt acaccttttg atgttgttag acaatgctca ggtgttactt 
    10921 tccaaagtgc agtgaaaaga acaatcaagg gtacacacca ctggttgtta ctcacaattt 
    10981 tgacttcact tttagtttta gtccagagta ctcaatggtc tttgttcttt tttttgtatg 
    11041aaaatgcctt tttacctttt gctatgggta ttattgctat gtctgctttt gcaatgatgt 
    11101 ttgtcaaaca taagcatgca tttctctgtt tgtttttgtt accttctctt gccactgtag 
    11161 cttattttaa tatggtctat atgcctgcta gttgggtgat gcgtattatg acatggttgg 
    11221 atatggttga tactagtttg aagctaaaag actgtgttat gtatgcatca gctgtagtgt 
    11281 tactaatcct tatgacagca agaactgtgt atgatgatgg tgctaggaga gtgtggacac 
    11341 ttatgaatgt cttgacactc gtttataaag tttattatgg taatgcttta gatcaagcca 
    11401 tttccatgtg ggctcttata atctctgtta cttctaacta ctcaggtgta gttacaactg 
    11461 tcatgttttt ggccagaggt attgttttta tgtgtgttga gtattgccct attttcttca 
    11521taactggtaa tacacttcag tgtataatgc tagtttattg tttcttaggc tatttttgta 
    11581 cttgttactt tggcctcttt tgtttactca accgctactt tagactgact cttggtgttt 
    11641 atgattactt agtttctaca caggagttta gatatatgaa ttcacaggga ctactcccac 
    11701 ccaagaatag catagatgcc ttcaaactca acattaaatt gttgggtgtt ggtggcaaac 
    11761 cttgtatcaa agtagccact gtacagtcta aaatgtcaga tgtaaagtgc acatcagtag 
    11821 tcttactctc agttttgcaa caactcagag tagaatcatc atctaaattg tgggctcaat 
    11881 gtgtccagtt acacaatgac attctcttag ctaaagatac tactgaagcc tttgaaaaaa 
    11941 tggtttcact actttctgtt ttgctttcca tgcagggtgc tgtagacata aacaagcttt 
    12001gtgaagaaat gctggacaac agggcaacct tacaagctat agcctcagag tttagttccc 
    12061 ttccatcata tgcagctttt gctactgctc aagaagctta tgagcaggct gttgctaatg 
    12121 gtgattctga agttgttctt aaaaagttga agaagtcttt gaatgtggct aaatctgaat 
    12181 ttgaccgtga tgcagccatg caacgtaagt tggaaaagat ggctgatcaa gctatgaccc 
    12241 aaatgtataa acaggctaga tctgaggaca agagggcaaa agttactagt gctatgcaga 
    12301 caatgctttt cactatgctt agaaagttgg acaatgatgc actcaacaac attatcaaca 
    12361 atgcaagaga tggttgtgtt cccttgaaca taatacctct tacaacagca gccaaactaa 
    12421 tggttgtcat accagactat aacacatata aaaatacgtg tgatggtaca acatttactt 
    12481atgcatcagc attgtgggaa atccaacagg ttgtagatgc agatagtaaa attgttcaac 
    12541 ttagtgaaat tagtatggac aattcaccta atttagcatg gcctcttatt gtaacagctt 
    12601 taagggccaa ttctgctgtc aaattacaga ataatgagct tagtcctgtt gcactacgac 
    12661 agatgtcttg tgctgccggt actacacaaa ctgcttgcac tgatgacaat gcgttagctt 
    12721 actacaacac aacaaaggga ggtaggtttg tacttgcact gttatccgat ttacaggatt 
    12781 tgaaatgggc tagattccct aagagtgatg gaactggtac tatctataca gaactggaac 
    12841 caccttgtag gtttgttaca gacacaccta aaggtcctaa agtgaagtat ttatacttta 
    12901 ttaaaggatt aaacaaccta aatagaggta tggtacttgg tagtttagct gccacagtac 
    12961gtctacaagc tggtaatgca acagaagtgc ctgccaattc aactgtatta tctttctgtg 
    13021 cttttgctgt agatgctgct aaagcttaca aagattatct agctagtggg ggacaaccaa 
    13081 tcactaattg tgttaagatg ttgtgtacac acactggtac tggtcaggca ataacagtta 
    13141 caccggaagc caatatggat caagaatcct ttggtggtgc atcgtgttgt ctgtactgcc 
    13201 gttgccacat agatcatcca aatcctaaag gattttgtga cttaaaaggt aagtatgtac 
    13261 aaatacctac aacttgtgct aatgaccctg tgggttttac acttaaaaac acagtctgta 
    13321 ccgtctgcgg tatgtggaaa ggttatggct gtagttgtga tcaactccgc gaacccatgc 
    13381 ttcagtcagc tgatgcacaa tcgtttttaa acgggtttgc ggtgtaagtg cagcccgtct 
    13441tacaccgtgc ggcacaggca ctagtactga tgtcgtatac agggcttttg acatctacaa 
    13501 tgataaagta gctggttttg ctaaattcct aaaaactaat tgttgtcgct tccaagaaaa 
    13561 ggacgaagat gacaatttaa ttgattctta ctttgtagtt aagagacaca ctttctctaa 
    13621 ctaccaacat gaagaaacaa tttataattt acttaaggat tgtccagctg ttgctaaaca 
    13681 tgacttcttt aagtttagaa tagacggtga catggtacca catatatcac gtcaacgtct 
    13741 tactaaatac acaatggcag acctcgtcta tgctttaagg cattttgatg aaggtaattg 
    13801 tgacacatta aaagaaatac ttgtcacata caattgttgt gatgatgatt atttcaataa 
    13861 aaaggactgg tatgattttg tagaaaaccc agatatatta cgcgtatacg ccaacttagg 
    13921tgaacgtgta cgccaagctt tgttaaaaac agtacaattc tgtgatgcca tgcgaaatgc 
    13981 tggtattgtt ggtgtactga cattagataa tcaagatctc aatggtaact ggtatgattt 
    14041 cggtgatttc atacaaacca cgccaggtag tggagttcct gttgtagatt cttattattc 
    14101 attgttaatg cctatattaa ccttgaccag ggctttaact gcagagtcac atgttgacac 
    14161 tgacttaaca aagccttaca ttaagtggga tttgttaaaa tatgacttca cggaagagag 
    14221 gttaaaactc tttgaccgtt attttaaata ttgggatcag acataccacc caaattgtgt 
    14281 taactgtttg gatgacagat gcattctgca ttgttcaaac tttaatgttt tattctctac 
    14341 agtgttccca cttacaagtt ttggaccact agtgagaaaa atatttgttg atggtgttcc 
    14401atttgtagtt tcaactggat accacttcag agagctaggt gttgtacata atcaggatgt 
    14461 aaacttacat agctctagac ttagttttaa ggaattactt gtgtatgctg ctgaccctgc 
    14521 tatgcacgct gcttctggta atctattact agataaacgc actacgtgct tttcagtagc 
    14581 tgcacttact aacaatgttg cttttcaaac tgtcaaacct ggtaatttta acaaagactt 
    14641 ctatgacttt gctgtgtcta agggtttctt taaggaagga agttctgttg aattaaaaca 
    14701 cttcttcttt gctcaggatg gtaatgctgc tatcagcgat tatgactact atcgttataa 
    14761 tctaccaaca atgtgtgata tcagacaact actatttgta gttgaagttg ttgataagta 
    14821 ctttgattgt tacgatggtg gctgtattaa tgctaaccaa gtcatcgtca acaacctaga 
    14881caaatcagct ggttttccat ttaataaatg gggtaaggct agactttatt atgattcaat 
    14941 gagttatgag gatcaagatg cacttttcgc atatacaaaa cgtaatgtca tccctactat 
    15001 aactcaaatg aatcttaagt atgccattag tgcaaagaat agagctcgca ccgtagctgg 
    15061 tgtctctatc tgtagtacta tgaccaatag acagtttcat caaaaattat tgaaatcaat 
    15121 agccgccact agaggagcta ctgtagtaa"

estimar.mv.com.ac(x12,x22,4)
