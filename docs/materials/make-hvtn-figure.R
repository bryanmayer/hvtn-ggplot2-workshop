library(hvtnFigures)
library(ggplot2)
library(tidyr)

bamaplots <- pt_plot(dat=hvtnReports::mock_bama, 
                     theme.base.size = 10,
                     pts="pub_id",
                     plot.margin = c(0.5, 0.5, 0.5, 0.8),
                     xvar="rx_code", 
                                  yvar="delta", 
                                  cutoff=100,
                                  pageby=c("isotype","antigen"), 
                                  page.title="HVTN Trial %s Antibody Responses to %s",
                                  plotby="visitno",
                                  plot.title="Visit %s",
                                  rx="rx_code", 
                                  rx.ctrl="P", 
                                  resp="response", 
                                  pchby="response", 
                                  colby="rx_code",
                                  #x.title="Treatment Arm Info",
                                  y.title="%s binding antibody units (log10(MFI-blank))", 
                                  y.brk.major=c(100,1000,2000,3000,5000,10000,20000,35000), 
                                  y.brk.minor=c(seq(200,900,100),seq(1000,9000,by=1000)),   
                                  page.number=19, test.pages=1:6,
                                  layout="landscape")   


ggsave(bamaplots[[6]], filename = "test2.pdf")





visc_bamaplots <- pt_plot(dat=VISCfunctions::exampleData_BAMA, 
                     theme.base.size = 10,
                     pts="pubID",
                     plot.margin = c(0.5, 0.5, 0.5, 0.8),
                     xvar="group", 
                     yvar="magnitude", 
                     cutoff=100,
                     pageby=c("antigen"), 
                     page.title="Antibody Responses to %s",
                     plotby="visitno",
                     plot.title="Visit %s",
                     rx="group", 
                     rx.ctrl="1", 
                     resp="response", 
                     pchby="response", 
                     colby="group",
                     #x.title="Treatment Arm Info",
                     y.title="%s binding antibody units (log10(MFI-blank))", 
                     y.brk.major=c(1, 100,1000,2000,3000,5000,10000,20000,35000), 
                     y.brk.minor=c(seq(200,900,100),seq(1000,9000,by=1000)),   
                     page.number=19, test.pages=1:6,
                     layout="landscape")   

ggsave(visc_bamaplots[[6]], filename = "test_visc.pdf")

