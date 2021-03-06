% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/compDrugsen.R
\name{compDrugsen}
\alias{compDrugsen}
\title{Comparison of drug sensitivity}
\usage{
compDrugsen(
  moic.res = NULL,
  norm.expr = NULL,
  drugs = c("Cisplatin", "Paclitaxel"),
  tissueType = "all",
  test.method = "nonparametric",
  clust.col = c("#2EC4B6", "#E71D36", "#FF9F1C", "#BDD5EA", "#FFA5AB", "#011627",
    "#023E8A", "#9D4EDD"),
  prefix = NULL,
  seed = 123456,
  fig.path = getwd(),
  width = 5,
  height = 5
)
}
\arguments{
\item{moic.res}{An object returned by `getMOIC()` with one specified algorithm or `get\%algorithm_name\%` or `getConsensusMOIC()` with a list of multiple algorithms.}

\item{norm.expr}{A matrix of normalized expression data with rows for genes and columns for samples; FPKM or TPM without log2 transformation is recommended.}

\item{drugs}{A string vector to indicate the names of the drugs for which you would like to predict sensitivity, one of A.443654, A.770041, ABT.263, ABT.888, AG.014699, AICAR, AKT.inhibitor.VIII, AMG.706, AP.24534, AS601245, ATRA, AUY922, Axitinib, AZ628, AZD.0530, AZD.2281, AZD6244, AZD6482, AZD7762, AZD8055, BAY.61.3606, Bexarotene, BI.2536, BIBW2992, Bicalutamide, BI.D1870, BIRB.0796, Bleomycin, BMS.509744, BMS.536924, BMS.708163, BMS.754807, Bortezomib, Bosutinib, Bryostatin.1, BX.795, Camptothecin, CCT007093, CCT018159, CEP.701, CGP.082996, CGP.60474, CHIR.99021, CI.1040, Cisplatin, CMK, Cyclopamine, Cytarabine, Dasatinib, DMOG, Docetaxel, Doxorubicin, EHT.1864, Elesclomol, Embelin, Epothilone.B, Erlotinib, Etoposide, FH535, FTI.277, GDC.0449, GDC0941, Gefitinib, Gemcitabine, GNF.2, GSK269962A, GSK.650394, GW.441756, GW843682X, Imatinib, IPA.3, JNJ.26854165, JNK.9L, JNK.Inhibitor.VIII, JW.7.52.1, KIN001.135, KU.55933, Lapatinib, Lenalidomide, LFM.A13, Metformin, Methotrexate, MG.132, Midostaurin, Mitomycin.C, MK.2206, MS.275, Nilotinib, NSC.87877, NU.7441, Nutlin.3a, NVP.BEZ235, NVP.TAE684, Obatoclax.Mesylate, OSI.906, PAC.1, Paclitaxel, Parthenolide, Pazopanib, PD.0325901, PD.0332991, PD.173074, PF.02341066, PF.4708671, PF.562271, PHA.665752, PLX4720, Pyrimethamine, QS11, Rapamycin, RDEA119, RO.3306, Roscovitine, Salubrinal, SB.216763, SB590885, Shikonin, SL.0101.1, Sorafenib, S.Trityl.L.cysteine, Sunitinib, Temsirolimus, Thapsigargin, Tipifarnib, TW.37, Vinblastine, Vinorelbine, Vorinostat, VX.680, VX.702, WH.4.023, WO2009093972, WZ.1.84, X17.AAG, X681640, XMD8.85, Z.LLNle.CHO, ZM.447439; two common chemodrugs (i.e., Cisplatin and Paclitaxel) will be analyzed by default if no indication.}

\item{tissueType}{A string value to specify if you would like to traing the models on only a subset of the CGP cell lines (based on the tissue type from which the cell lines originated); Allowed values contain c("all", "aero_digestive_tract", "blood", "bone", "breast", "digestive_system", "lung", "nervous_system", "skin", "urogenital_system") and "all" by default.}

\item{test.method}{A string value to indicate the method for statistical testing. Allowed values contain c('nonparametric', 'parametric'); nonparametric means two-sample wilcoxon rank sum test for two subtypes and Kruskal-Wallis rank sum test for multiple subtypes; parametric means two-sample t-test when only two subtypes are identified, and anova for multiple subtypes comparison; "nonparametric" by default.}

\item{clust.col}{A string vector storing colors for annotating each Subtype.}

\item{prefix}{A string value to indicate the prefix of the output plot.}

\item{seed}{A integer value to indicate the seed for reproducing ridge regression.}

\item{fig.path}{A string value to indicate the output path for storing the boxviolin plot.}

\item{width}{A numeric value to indicate the width of boxviolin plot.}

\item{height}{A numeric value to indicate the height of boxviolin plot.}
}
\value{
Data.frame(s) storing the estimated IC50 of specified drugs per sample within each Subtype.
}
\description{
This function estimates the IC50 of specific drugs for each Subtype by developing a ridge regression predictive model based on all/specific cell lines derived from Genomics of Drug Sensitivity in Cancer (GDSC, \url{https://www.cancerrxgene.org/}).
}
\examples{
# There is no example and please refer to vignette.
}
\references{
Geeleher P, Cox N, Huang R S. (2014). pRRophetic: an R package for prediction of clinical chemotherapeutic response from tumor gene expression levels. PLoS One, 9(9):e107468.

Geeleher P, Cox N J, Huang R S. (2014). Clinical drug response can be predicted using baseline gene expression levels and in vitro drug sensitivity in cell lines. Genome Biol, 15(3):1-12.
}
