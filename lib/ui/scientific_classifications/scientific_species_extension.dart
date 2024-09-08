import 'package:ants_companion/domain/scientific_classifications/models/scientific_species.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

extension ScientificSpeciesExtension on ScientificSpecies {
  String scientificName(AppLocalizations l10n) => switch (this) {
        ScientificSpecies.ampulexCompressa => l10n.ampulexCompressa,
        ScientificSpecies.aphantochilusRogersi => l10n.aphantochilusRogersi,
        ScientificSpecies.arilusCristatus => l10n.arilusCristatus,
        ScientificSpecies.attaLaevigata => l10n.attaLaevigata,
        ScientificSpecies.attaSexdens => l10n.attaSexdens,
        ScientificSpecies.camponotusColoratus => l10n.camponotusColoratus,
        ScientificSpecies.camponotusChromaiodes => l10n.camponotusChromaiodes,
        ScientificSpecies.camponotusMirabilis => l10n.camponotusMirabilis,
        ScientificSpecies.camponotusSericeiventris =>
          l10n.camponotusSericeiventris,
        ScientificSpecies.cataulacusHuberi => l10n.cataulacusHuberi,
        ScientificSpecies.cataglyphisBombycina => l10n.cataglyphisBombycina,
        ScientificSpecies.cephalotesAlfaroi => l10n.cephalotesAlfaroi,
        ScientificSpecies.crematogasterInflata => l10n.crematogasterInflata,
        ScientificSpecies.cyphomyrmexFlavidus => l10n.cyphomyrmexFlavidus,
        ScientificSpecies.cyphomyrmexRimosus => l10n.cyphomyrmexRimosus,
        ScientificSpecies.dacetonArmigerum => l10n.dacetonArmigerum,
        ScientificSpecies.dasymutillaGloriosa => l10n.dasymutillaGloriosa,
        ScientificSpecies.dasymutillaOccidentalis =>
          l10n.dasymutillaOccidentalis,
        ScientificSpecies.dolichoderusBispinosus => l10n.dolichoderusBispinosus,
        ScientificSpecies.dorylusDriver => l10n.dorylusDriver,
        ScientificSpecies.duskyLurker => l10n.duskyLurker,
        ScientificSpecies.ecitonRapax => l10n.ecitonRapax,
        ScientificSpecies.echitonBurchellii => l10n.echitonBurchellii,
        ScientificSpecies.euspinoliaMilitaris => l10n.euspinoliaMilitaris,
        ScientificSpecies.formicaClara => l10n.formicaClara,
        ScientificSpecies.gnamptogenysMordax => l10n.gnamptogenysMordax,
        ScientificSpecies.harpegnathosVenator => l10n.harpegnathosVenator,
        ScientificSpecies.leptogenysElongata => l10n.leptogenysElongata,
        ScientificSpecies.leptoglossusPhyllopus => l10n.leptoglossusPhyllopus,
        ScientificSpecies.leptomyrmexBurwelli => l10n.leptomyrmexBurwelli,
        ScientificSpecies.merannoplusBicolor => l10n.merannoplusBicolor,
        ScientificSpecies.merannoplusCastaneus => l10n.merannoplusCastaneus,
        ScientificSpecies.mimicryMaster => l10n.mimicryMaster,
        ScientificSpecies.myrmeciaPilosula => l10n.myrmeciaPilosula,
        ScientificSpecies.myrmecotypusRettenmeyeri =>
          l10n.myrmecotypusRettenmeyeri,
        ScientificSpecies.myrmarachneFormicaria => l10n.myrmarachneFormicaria,
        ScientificSpecies.myrmarachneGisti => l10n.myrmarachneGisti,
        ScientificSpecies.myrmarachnePlataleoides =>
          l10n.myrmarachnePlataleoides,
        ScientificSpecies.myrmarachneSp => l10n.myrmarachneSp,
        ScientificSpecies.mystriumCamillae => l10n.mystriumCamillae,
        ScientificSpecies.mystriumOberthueri => l10n.mystriumOberthueri,
        ScientificSpecies.nomamyrmexEsenbeckii => l10n.nomamyrmexEsenbeckii,
        ScientificSpecies.neoponeraVillosa => l10n.neoponeraVillosa,
        ScientificSpecies.oecophyllaLonginoda => l10n.oecophyllaLonginoda,
        ScientificSpecies.odontomachusCoquereli => l10n.odontomachusCoquereli,
        ScientificSpecies.pheidoleNietneri => l10n.pheidoleNietneri,
        ScientificSpecies.paraponeraClavata => l10n.paraponeraClavata,
        ScientificSpecies.plectroctenaCristata => l10n.plectroctenaCristata,
        ScientificSpecies.polyrhachisTrapezoidea => l10n.polyrhachisTrapezoidea,
        ScientificSpecies.proattaButteli => l10n.proattaButteli,
        ScientificSpecies.procryptocerusAdlerzi => l10n.procryptocerusAdlerzi,
        ScientificSpecies.pseudomyrmexBoopis => l10n.pseudomyrmexBoopis,
        ScientificSpecies.pseudomyrmexGracilis => l10n.pseudomyrmexGracilis,
        ScientificSpecies.psalidomyrmexReichenspergeri =>
          l10n.psalidomyrmexReichenspergeri,
        ScientificSpecies.prionopeltaHumicola => l10n.prionopeltaHumicola,
        ScientificSpecies.strumigenysEggersi => l10n.strumigenysEggersi,
        ScientificSpecies.tapinomaMelanocephalum => l10n.tapinomaMelanocephalum,
        ScientificSpecies.telamoniaDimidiata => l10n.telamoniaDimidiata,
        ScientificSpecies.tetraponeraRufonigra => l10n.tetraponeraRufonigra,
        ScientificSpecies.tetramoriumPulcherrimum =>
          l10n.tetramoriumPulcherrimum,
        ScientificSpecies.thaumatomyrmexAtrox => l10n.thaumatomyrmexAtrox,
        ScientificSpecies.tricondylaAptera => l10n.tricondylaApteraCommon,
      };

  String commonName(AppLocalizations l10n) => switch (this) {
        ScientificSpecies.ampulexCompressa => l10n.ampulexCompressaCommon,
        ScientificSpecies.aphantochilusRogersi =>
          l10n.aphantochilusRogersiCommon,
        ScientificSpecies.arilusCristatus => l10n.arilusCristatusCommon,
        ScientificSpecies.attaLaevigata => l10n.attaLaevigataCommon,
        ScientificSpecies.attaSexdens => l10n.attaSexdens,
        ScientificSpecies.camponotusColoratus => l10n.camponotusColoratusCommon,
        ScientificSpecies.camponotusChromaiodes =>
          l10n.camponotusChromaiodesCommon,
        ScientificSpecies.camponotusMirabilis => l10n.camponotusMirabilisCommon,
        ScientificSpecies.camponotusSericeiventris =>
          l10n.camponotusSericeiventrisCommon,
        ScientificSpecies.cataulacusHuberi => l10n.cataulacusHuberiCommon,
        ScientificSpecies.cataglyphisBombycina =>
          l10n.cataglyphisBombycinaCommon,
        ScientificSpecies.cephalotesAlfaroi => l10n.cephalotesAlfaroiCommon,
        ScientificSpecies.crematogasterInflata =>
          l10n.crematogasterInflataCommon,
        ScientificSpecies.cyphomyrmexFlavidus => l10n.cyphomyrmexFlavidusCommon,
        ScientificSpecies.cyphomyrmexRimosus => l10n.cyphomyrmexRimosusCommon,
        ScientificSpecies.dacetonArmigerum => l10n.dacetonArmigerumCommon,
        ScientificSpecies.dasymutillaGloriosa => l10n.dasymutillaGloriosaCommon,
        ScientificSpecies.dasymutillaOccidentalis =>
          l10n.dasymutillaOccidentalisCommon,
        ScientificSpecies.dolichoderusBispinosus =>
          l10n.dolichoderusBispinosusCommon,
        ScientificSpecies.dorylusDriver => l10n.dorylusDriverCommon,
        ScientificSpecies.duskyLurker => l10n.duskyLurkerCommon,
        ScientificSpecies.ecitonRapax => l10n.ecitonRapaxCommon,
        ScientificSpecies.echitonBurchellii => l10n.echitonBurchelliiCommon,
        ScientificSpecies.euspinoliaMilitaris => l10n.euspinoliaMilitarisCommon,
        ScientificSpecies.formicaClara => l10n.formicaClaraCommon,
        ScientificSpecies.gnamptogenysMordax => l10n.gnamptogenysMordaxCommon,
        ScientificSpecies.harpegnathosVenator => l10n.harpegnathosVenatorCommon,
        ScientificSpecies.leptogenysElongata => l10n.leptogenysElongataCommon,
        ScientificSpecies.leptoglossusPhyllopus =>
          l10n.leptoglossusPhyllopusCommon,
        ScientificSpecies.leptomyrmexBurwelli => l10n.leptomyrmexBurwelliCommon,
        ScientificSpecies.merannoplusBicolor => l10n.merannoplusBicolorCommon,
        ScientificSpecies.merannoplusCastaneus =>
          l10n.merannoplusCastaneusCommon,
        ScientificSpecies.mimicryMaster => l10n.mimicryMasterCommon,
        ScientificSpecies.myrmeciaPilosula => l10n.myrmeciaPilosulaCommon,
        ScientificSpecies.myrmecotypusRettenmeyeri =>
          l10n.myrmecotypusRettenmeyeriCommon,
        ScientificSpecies.myrmarachneFormicaria =>
          l10n.myrmarachneFormicariaCommon,
        ScientificSpecies.myrmarachneGisti => l10n.myrmarachneGistiCommon,
        ScientificSpecies.myrmarachnePlataleoides =>
          l10n.myrmarachnePlataleoidesCommon,
        ScientificSpecies.myrmarachneSp => l10n.myrmarachneSpCommon,
        ScientificSpecies.mystriumCamillae => l10n.mystriumCamillaeCommon,
        ScientificSpecies.mystriumOberthueri => l10n.mystriumOberthueriCommon,
        ScientificSpecies.nomamyrmexEsenbeckii =>
          l10n.nomamyrmexEsenbeckiiCommon,
        ScientificSpecies.neoponeraVillosa => l10n.neoponeraVillosaCommon,
        ScientificSpecies.oecophyllaLonginoda => l10n.oecophyllaLonginodaCommon,
        ScientificSpecies.odontomachusCoquereli =>
          l10n.odontomachusCoquereliCommon,
        ScientificSpecies.pheidoleNietneri => l10n.pheidoleNietneriCommon,
        ScientificSpecies.paraponeraClavata => l10n.paraponeraClavataCommon,
        ScientificSpecies.plectroctenaCristata =>
          l10n.plectroctenaCristataCommon,
        ScientificSpecies.polyrhachisTrapezoidea =>
          l10n.polyrhachisTrapezoideaCommon,
        ScientificSpecies.proattaButteli => l10n.proattaButteliCommon,
        ScientificSpecies.procryptocerusAdlerzi =>
          l10n.procryptocerusAdlerziCommon,
        ScientificSpecies.pseudomyrmexBoopis => l10n.pseudomyrmexBoopisCommon,
        ScientificSpecies.pseudomyrmexGracilis =>
          l10n.pseudomyrmexGracilisCommon,
        ScientificSpecies.psalidomyrmexReichenspergeri =>
          l10n.psalidomyrmexReichenspergeriCommon,
        ScientificSpecies.prionopeltaHumicola => l10n.prionopeltaHumicolaCommon,
        ScientificSpecies.strumigenysEggersi => l10n.strumigenysEggersiCommon,
        ScientificSpecies.tapinomaMelanocephalum =>
          l10n.tapinomaMelanocephalumCommon,
        ScientificSpecies.telamoniaDimidiata => l10n.telamoniaDimidiataCommon,
        ScientificSpecies.tetraponeraRufonigra =>
          l10n.tetraponeraRufonigraCommon,
        ScientificSpecies.tetramoriumPulcherrimum =>
          l10n.tetramoriumPulcherrimumCommon,
        ScientificSpecies.thaumatomyrmexAtrox => l10n.thaumatomyrmexAtroxCommon,
        ScientificSpecies.tricondylaAptera => l10n.tricondylaApteraCommon,
      };

  String description(AppLocalizations l10n) => switch (this) {
        ScientificSpecies.ampulexCompressa => l10n.ampulexCompressaDescription,
        ScientificSpecies.aphantochilusRogersi =>
          l10n.aphantochilusRogersiDescription,
        ScientificSpecies.arilusCristatus => l10n.arilusCristatusDescription,
        ScientificSpecies.attaLaevigata => l10n.attaLaevigataDescription,
        ScientificSpecies.attaSexdens => l10n.attaSexdens,
        ScientificSpecies.camponotusColoratus =>
          l10n.camponotusColoratusDescription,
        ScientificSpecies.camponotusChromaiodes =>
          l10n.camponotusChromaiodesDescription,
        ScientificSpecies.camponotusMirabilis =>
          l10n.camponotusMirabilisDescription,
        ScientificSpecies.camponotusSericeiventris =>
          l10n.camponotusSericeiventrisDescription,
        ScientificSpecies.cataulacusHuberi => l10n.cataulacusHuberiDescription,
        ScientificSpecies.cataglyphisBombycina =>
          l10n.cataglyphisBombycinaDescription,
        ScientificSpecies.cephalotesAlfaroi =>
          l10n.cephalotesAlfaroiDescription,
        ScientificSpecies.crematogasterInflata =>
          l10n.crematogasterInflataDescription,
        ScientificSpecies.cyphomyrmexFlavidus =>
          l10n.cyphomyrmexFlavidusDescription,
        ScientificSpecies.cyphomyrmexRimosus =>
          l10n.cyphomyrmexRimosusDescription,
        ScientificSpecies.dacetonArmigerum => l10n.dacetonArmigerumDescription,
        ScientificSpecies.dasymutillaGloriosa =>
          l10n.dasymutillaGloriosaDescription,
        ScientificSpecies.dasymutillaOccidentalis =>
          l10n.dasymutillaOccidentalisDescription,
        ScientificSpecies.dolichoderusBispinosus =>
          l10n.dolichoderusBispinosusDescription,
        ScientificSpecies.dorylusDriver => l10n.dorylusDriverDescription,
        ScientificSpecies.duskyLurker => l10n.duskyLurkerDescription,
        ScientificSpecies.ecitonRapax => l10n.ecitonRapaxDescription,
        ScientificSpecies.echitonBurchellii =>
          l10n.echitonBurchelliiDescription,
        ScientificSpecies.euspinoliaMilitaris =>
          l10n.euspinoliaMilitarisDescription,
        ScientificSpecies.formicaClara => l10n.formicaClaraDescription,
        ScientificSpecies.gnamptogenysMordax =>
          l10n.gnamptogenysMordaxDescription,
        ScientificSpecies.harpegnathosVenator =>
          l10n.harpegnathosVenatorDescription,
        ScientificSpecies.leptogenysElongata =>
          l10n.leptogenysElongataDescription,
        ScientificSpecies.leptoglossusPhyllopus =>
          l10n.leptoglossusPhyllopusDescription,
        ScientificSpecies.leptomyrmexBurwelli =>
          l10n.leptomyrmexBurwelliDescription,
        ScientificSpecies.merannoplusBicolor =>
          l10n.merannoplusBicolorDescription,
        ScientificSpecies.merannoplusCastaneus =>
          l10n.merannoplusCastaneusDescription,
        ScientificSpecies.mimicryMaster => l10n.mimicryMasterDescription,
        ScientificSpecies.myrmeciaPilosula => l10n.myrmeciaPilosulaDescription,
        ScientificSpecies.myrmecotypusRettenmeyeri =>
          l10n.myrmecotypusRettenmeyeriDescription,
        ScientificSpecies.myrmarachneFormicaria =>
          l10n.myrmarachneFormicariaDescription,
        ScientificSpecies.myrmarachneGisti => l10n.myrmarachneGistiDescription,
        ScientificSpecies.myrmarachnePlataleoides =>
          l10n.myrmarachnePlataleoidesDescription,
        ScientificSpecies.myrmarachneSp => l10n.myrmarachneSpDescription,
        ScientificSpecies.mystriumCamillae => l10n.mystriumCamillaeDescription,
        ScientificSpecies.mystriumOberthueri =>
          l10n.mystriumOberthueriDescription,
        ScientificSpecies.nomamyrmexEsenbeckii =>
          l10n.nomamyrmexEsenbeckiiDescription,
        ScientificSpecies.neoponeraVillosa => l10n.neoponeraVillosaDescription,
        ScientificSpecies.oecophyllaLonginoda =>
          l10n.oecophyllaLonginodaDescription,
        ScientificSpecies.odontomachusCoquereli =>
          l10n.odontomachusCoquereliDescription,
        ScientificSpecies.pheidoleNietneri => l10n.pheidoleNietneriDescription,
        ScientificSpecies.paraponeraClavata =>
          l10n.paraponeraClavataDescription,
        ScientificSpecies.plectroctenaCristata =>
          l10n.plectroctenaCristataDescription,
        ScientificSpecies.polyrhachisTrapezoidea =>
          l10n.polyrhachisTrapezoideaDescription,
        ScientificSpecies.proattaButteli => l10n.proattaButteliDescription,
        ScientificSpecies.procryptocerusAdlerzi =>
          l10n.procryptocerusAdlerziDescription,
        ScientificSpecies.pseudomyrmexBoopis =>
          l10n.pseudomyrmexBoopisDescription,
        ScientificSpecies.pseudomyrmexGracilis =>
          l10n.pseudomyrmexGracilisDescription,
        ScientificSpecies.psalidomyrmexReichenspergeri =>
          l10n.psalidomyrmexReichenspergeriDescription,
        ScientificSpecies.prionopeltaHumicola =>
          l10n.prionopeltaHumicolaDescription,
        ScientificSpecies.strumigenysEggersi =>
          l10n.strumigenysEggersiDescription,
        ScientificSpecies.tapinomaMelanocephalum =>
          l10n.tapinomaMelanocephalumDescription,
        ScientificSpecies.telamoniaDimidiata =>
          l10n.telamoniaDimidiataDescription,
        ScientificSpecies.tetraponeraRufonigra =>
          l10n.tetraponeraRufonigraDescription,
        ScientificSpecies.tetramoriumPulcherrimum =>
          l10n.tetramoriumPulcherrimumDescription,
        ScientificSpecies.thaumatomyrmexAtrox =>
          l10n.thaumatomyrmexAtroxDescription,
        ScientificSpecies.tricondylaAptera => l10n.tricondylaApteraDescription,
      };
}
